provider "aws" {
    region = var.region
}

resource "aws_instance" "workspace_instance" {
  count = terraform.workspace == "prod" ? 1 : 0
  ami = var.ami_id

  instance_type = var.instance_type 
  tags = {
    Environment = "${terraform.workspace}-environment"
  }
}