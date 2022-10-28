provider "aws" {
  region = "us-east-1"
  shared_credentials_files = var.credentials_file
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "PRD-WBSRV" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  tags          = var.tags
  vpc_security_group_ids = [aws_security_group.sec-grp.id]
  key_name = "deployer-key"
}

resource "aws_key_pair" "Login" {
  key_name   = "deployer-key"
  public_key = var.aws_key_pair
}