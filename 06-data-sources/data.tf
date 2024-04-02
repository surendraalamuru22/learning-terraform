data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "centos -8-devops-practice"
  owners           = ["801119661308"]
}

output "data" {
  value = "data.aws_ami.example"
}