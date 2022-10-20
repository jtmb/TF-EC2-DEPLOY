echo -------------------------------
echo
echo Provisioning EC2 with Terraform
echo
echo -------------------------------
cd EC2 && terraform apply -var-file=vars.tfvars
echo -------------------------------
echo
echo Post Provision tasks with Ansible have kicked off
echo 
echo -------------------------------
cd .. && cd post-provisioning && ansible-playbook -i inventory.ini main.yml