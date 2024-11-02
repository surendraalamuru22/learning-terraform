resource "aws_instance" "sample" {
  count = length(var.instances)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"


  tags = {
    Name = element(var.instances, count.index)
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "instances" {
  default = [
    "frontend",
    "cart"
  ]
}