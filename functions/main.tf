variable "sample" {
  default = {
    apple = {
      Name = "apple"
      count = 20
    }
    orange = {
      Name = "orange"
      count = 20
    }
  }
}

output "sample" {
  value = lookup(lookup(var.sample, "apple", null) "count", null)
}

variable "sample1" {
  default = ["cart", "catalogue"]
}

output "sample1" {
  value = element(var.sample1, 0)
}

