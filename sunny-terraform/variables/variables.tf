variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

variable "sample1" {
  default = [
    "hello",
    10,
    true
  ]
}

output "sample1" {
  value = var.sample1[0]
}

