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