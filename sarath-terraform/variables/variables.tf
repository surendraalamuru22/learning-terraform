variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

output "sample2" {
  value = "hi, ${var.sample}"
}


variable "list" {
  default = [
   "test",
    100,
    true
  ]
}

output "sample3" {
  value = var.list[1]
}

variable "map" {
  default = {
    apple = {
      Name = "apple",
      count = 100
    }
    orange = {}
  }
}

output "sample4" {
  value = var.map["apple"]
}

variable "tfvars" {}