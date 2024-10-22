resource "aws_instance" "sample" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags {
    Name = var.instance_name
  }
}

variable "instance_name" {}