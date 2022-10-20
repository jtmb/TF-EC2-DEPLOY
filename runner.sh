echo -------------------------------
echo
echo Provisioning EC2 with Terraform
echo
echo -------------------------------

cd EC2 && terraform apply -var-file=vars.tfvars

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
cd .. && cd post-provisioning && ansible-playbook -i inventory.ini main.yml