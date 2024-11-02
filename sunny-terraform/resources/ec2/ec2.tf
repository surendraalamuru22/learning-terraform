resource "aws_instance" "sample" {
  count = length(var.instances, count.index)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
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