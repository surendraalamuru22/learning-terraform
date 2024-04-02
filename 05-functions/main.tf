variable "sample" {
  default = [
    "abc",
    123
  ]
}

output "sample" {
  value = element(var.sample, 0)
}