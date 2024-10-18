resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = "frontend"
  }
}