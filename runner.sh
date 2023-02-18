key_pair=$(cat ~/.ssh/id_rsa.pub)

echo -------------------------------
echo
echo Provisioning EC2 with Terraform
echo
echo -------------------------------
terraform init
terraform apply -var-file=vars.tfvars -var "aws_key_pair=$key_pair"

echo
echo
echo
echo
echo -------------------------------
echo
echo Proceeding with Ansible Post Provision Play
echo
echo -------------------------------
echo
echo
echo -------------------------------------------------------------------WAIT--------------------------------------------------------------------------------------
echo -----------------------------------------------------!!!??DID YOU SET YOUR VARS??!!!-------------------------------------------------------------------------
echo --------ANSIBLE Vars must be set in order for deploy to work. If you are unsure about what these VARS do or where they are :---------------------------------                             
echo -------------------------------------------------------------------------------------------------------------------------------------------------------------
echo --------------------------------------------The following ansible vars must be set in vars.yml:--------------------------------------------------------------
echo ----------------------------------------"target_server_ip" "private_server_ip" "ssh_cert" "ssh_user:"--------------------------------------------------------
echo -------------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------Once you have changed the var values, simply save your changes and answer "yes" to the prompt below.------------------------------------
echo -------------------------------------------------------------------------------------------------------------------------------------------------------------
echo
echo
echo
echo
echo

# Display Output confirmation request
    while true; do
        read -p "Do you have want to continue?" yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) exit ;;
            * ) echo "Please answer yes or no.";;
        esac
    done
echo -------------------------------
echo
echo Post Provision tasks with Ansible has kicked off
echo 
echo -------------------------------

# get vars from aws instance (terraform output)
aws_instance_pub_ip=$(terraform output -json instance_ips | jq -r '.[0]')
aws_instance_private_ip=$(terraform output -json private_ips | jq -r '.[0]')

cd post-provisioning && ANSIBLE_CONFIG=./ansible.cfg \
sudo ansible-playbook -i inventory.ini main.yml --ask-vault-pass --extra-vars "target_server_ip=$aws_instance_pub_ip private_server_ip=$aws_instance_private_ip ssh_port=2002 ssh_cert=$HOME/.ssh/id_rsa"

echo "$aws_instance_pub_ip has been rebooted."