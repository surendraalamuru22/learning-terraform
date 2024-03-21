variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

output "sample2" {
  value = "Hey, ${var.sample}"
}