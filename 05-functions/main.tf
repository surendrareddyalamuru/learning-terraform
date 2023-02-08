variable "sample" {
  default = ["abe", 123]
}

output "sample" {
  value = element(var.sample, 0)
}