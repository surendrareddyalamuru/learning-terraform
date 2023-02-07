variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = "Hey, ${var.sample}"
}

variable "sample1" {
  default = "Hello"
}

variable "sample2" {
  default = 100
}

variable "sample3" {
  default = True
}

variable "sample4" {
  default = [
    "Hello"
    100
    True
  ]
}

output "sample4" {
  value = var.sample4
}