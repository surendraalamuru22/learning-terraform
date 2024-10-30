output "test" {
  value = "hello world"
}

resource "aws_instance" "sarath" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
}

provider "aws" {
  region = "us-east-1"
}