provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  count = 2
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = "test-${count.index}"
  }
}
