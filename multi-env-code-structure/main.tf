module "ec2" {
  source = "./module/ec2"
  env = var.env
}

provider "aws" {
  region = "us-east-1"
}