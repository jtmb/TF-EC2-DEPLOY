# About:

This playbook aims to automate linux debian vm or machine provisioning with changing a few vars.

Update Vars files before running.

Terraform vars are located here: TF-EC2-DEPLOY/blob/main/EC2/vars.tfvars

Ansible Vars are located here:  TF-EC2-DEPLOY/blob/main/post-provisioning/vars/vars.yml



# Runing the program:

1. open termingal in the repo folder (TF-EC2-DEPLOY)
2. run 

         bash runner.sh        
-------------------------------

### Running Terraform code individualy

1. cd TF-EC2-DEPLOY/EC2 
2. Run the following command:

         terraform apply -var-file=vars.tfvars

-------------------------------

-------------------------------

### Running Ansible code individualy

1. cd TF-EC2-DEPLOY/post-provisioning
2. Run the following command:

         ansible-playbook -i inventory.ini main.yml

-------------------------------


# Connecting to the EC2 Instance:

1. The post provisioning playbook will have deployed your ssh key that you set in the vars.tfvars file.
2. You can conncet through SSH using:

         ssh ubuntu@yourip -p 2002