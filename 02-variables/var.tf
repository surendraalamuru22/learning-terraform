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
