variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample" {
  value = "Hey, ${var.sample}"
}