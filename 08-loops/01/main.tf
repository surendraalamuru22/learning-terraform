resource "aws_instance" "sample" {
  count         = 2
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"

    tags = {
      Name = "test-${count.index}"
}
}