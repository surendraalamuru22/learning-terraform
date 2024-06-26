resource "aws_instance" "sample" {
  for_each = var.instances
  ami           = "ami-0f3c7d07486cad139"
  instance_type = each.value.instance_type

  tags = {
    Name = each.value.tagName
  }
}

variable "instances" {
  default = {
    catalogue = {
      instance_type = "t3.micro"
      tagName = "CATALOGUE"
    }
    cart = {
      instance_type = "t3.micro"
      tagName = "CART"
    }
  }
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = local.message
  }
}

locals {
  message = "echo hello world"
}
