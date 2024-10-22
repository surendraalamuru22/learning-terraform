variable "instances" {
  default = ["test1", "test2"]
}

module "ec2" {
  count = length(var.instances)
  source = "./ec2"
  instance_name = element(var.instances, count.index)
}

provider "aws" {
  region = "us-east-1"
}