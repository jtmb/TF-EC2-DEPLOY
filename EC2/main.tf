provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["/home/james/.aws/credentials"]
}

resource "aws_instance" "PRD" {
  ami           = "ami-0636eac5d73e0e5d7"
  instance_type = "t2.micro"

  tags = {
    Name = "PRD"
  }
}