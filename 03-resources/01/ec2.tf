provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
}