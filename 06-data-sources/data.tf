data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "centos -8-devops-practice"
  owners           = ["596061404617"]
}

output "ami" {
  value = data.aws_ami.example
}