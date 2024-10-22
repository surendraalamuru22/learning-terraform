provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = var.ami_id
  instance_type = var.instance_type
}