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

variable "sample2" {
  default = {
    string = "hello",
    number = 10,
    boolean = true
  }
}

output "sample2" {
  value = var.sample2["number"]
}

variable "list" {
  default = ["number", "string", "boolean"]
}

