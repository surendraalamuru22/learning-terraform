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
  default = true
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
    true,
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

variable "map2" {
  default = {
    boolean = true
    number = 20
    string = "sarath"
  }
}

output "list1" {
  value = var.list1[2]
}

output "map2" {
  value = var.map2["number"]
}
output "map1" {
  value = var.map1["aws"]["trainer"]
}