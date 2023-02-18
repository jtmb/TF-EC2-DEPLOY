resource "aws_security_group" "sec-grp" {
  name = "sec-grp-prd"
  description = "Allow HTTP and SSH traffic via Terraform"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 2002
    to_port     = 2002
    protocol    = "tcp"
    cidr_blocks = ["66.23.12.137/32"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

# Containers
ingress {
    from_port   = 81
    to_port     = 81
    protocol    = "tcp"
    cidr_blocks = ["66.23.12.137/32"]
  }

ingress {
    from_port   = 9091
    to_port     = 9091
    protocol    = "tcp"
    cidr_blocks = ["66.23.12.137/32"]
  }

ingress {
    from_port   = 8093
    to_port     = 8093
    protocol    = "tcp"
    cidr_blocks = ["66.23.12.137/32"]
  }
}