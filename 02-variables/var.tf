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
  value = var.sample5
}