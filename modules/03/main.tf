module "ec2" {
  source = "./ec2"
  ami_id = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
}