terraform {
  backend "s3" {
    bucket = "terraform-reddy"
    key    = "04-resources/terraform.tfstate"
    region = "us-east-1"
  }
}