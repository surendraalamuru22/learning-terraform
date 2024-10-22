resource "aws_instance" "test1" {
  for_each = var.instance
  ami           = "ami-0b4f379183e5706b9"
  instance_type = each.value.instance_type
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = each.value.tagName
  }
}



variable "instance" {
  default = {
    catalogue = {
      instance_type = "t3.micro"
      tagName = "MONGODB"
    }
    cart = {
      instance_type = "t3.micro"
      tagName = "REDIS"
    }
  }
}