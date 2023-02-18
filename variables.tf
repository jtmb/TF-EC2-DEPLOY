variable "credentials_file" {
  description = "Credentials File Location"
  type        = set(string)
}

variable "tags" {
  type = map(string)
  default = {
    Name = ""
    OS = ""
    Type = ""
    Application = ""
    Environment = ""
  }
}

variable "aws_key_pair" {
  description = "Pub Key to associate with ther server"
  type        = string
}

output "instance_ips" {
  value = aws_instance.PRD-WBSRV.*.public_ip
}

output "private_ips" {
  value = aws_instance.PRD-WBSRV.*.private_ip
}