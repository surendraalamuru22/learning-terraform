variable url {
  default = "example.com"
}

output "url" {
  value = var.url
}

output "url2" {
  value = "URL - ${var.url}"
}

variable "num1" {
  default = 10
}

variable "bool1" {
  default = True
}

variable "str1" {
  default = "HELLO"
}

variable "str2" {
  default = "Hello world"
}

variable "list1" {
  default = [
    10,
  True,
  "XYZ"
  ]
}

variable "map1" {
  default = {
    aws = {
      trainer = "raghu"
      duration = 20
    }
    devops= {
      trainer = "surendra"
      duration = 30
    }
  }
}

output "list1" {
  value = var.list1[3]
}