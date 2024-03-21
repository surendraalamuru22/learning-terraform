variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

output "sample2" {
  value = "Hey, ${var.sample}"
}

variable "sample2" {
  default = "hey you"
}

variable "sample3" {
  default = 100
}

variable "sample4" {
  default = true
}

output "sample3" {
  value = var.sample3
}

variable "sample5" {
  default = [
    "hey you",
    100,
    true
  ]
}

output "sample4" {
  value = var.sample5[1]
}

variable "sample6" {
  default = {
    string = "hello world"
    number = 200
    booloean = true
  }
}

output "sample5" {
  value = var.sample6["number"]
}

variable "sample7" {}
output "sample6" {
  value = var.sample7
}

variable "sample8" {}
output "sample7" {
  value = var.sample8
}