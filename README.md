# About:

This playbook aims to automate linux debian vm or machine provisioning with changing a few vars.

Update Vars files before running.

Terraform vars are located here: TF-EC2-DEPLOY/blob/main/EC2/vars.tfvars

Ansible Vars are located here:  TF-EC2-DEPLOY/blob/main/post-provisioning/vars/vars.yml

-------------------------------

### Running Terraform code

         ansible-playbook -i inventory.ini main.yml

-------------------------------

-------------------------------

### Running Ansible code

         ansible-playbook -i inventory.ini main.yml

-------------------------------
