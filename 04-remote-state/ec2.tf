resource "aws_instance" "sample" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = Upper(var.tagName)
  }
}

variable "tagName" {}