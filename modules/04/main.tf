variable "instances" {
  default = ["test1", "test2"]
}

module "ec2" {
  count = length(var.instances)
  source = "./ec2"

  tags {
    Name = element(var.instances, count.index )
  }
}