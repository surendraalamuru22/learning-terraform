resource "aws_instance" "sample" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.micro"
  security_groups = ["data.aws_security_group.sg.id"]
}



data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

data "aws_security_group" "sg" {
  name = "allow-all"
}