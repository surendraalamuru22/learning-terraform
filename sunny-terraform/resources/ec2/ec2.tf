resource "aws_instance" "sample" {
  count = 2
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "dev[count.index]"
  }
}

provider "aws" {
  region = "us-east-1"
}