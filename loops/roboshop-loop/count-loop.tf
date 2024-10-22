variable "instances" {
  default = [
    "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis"
  ]
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  count = length(var.instances)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = element(var.instances, count.index)
  }
}