terraform {
  backend "local" {
    path = "/home/james/.secrets/terraform.tfstate"
  }
}
