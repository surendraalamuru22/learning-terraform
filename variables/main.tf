variable url {
  default = "example.com"
}

output "url" {
  value = var.url
}

output "url2" {
  value = "URL - ${var.url}"
}