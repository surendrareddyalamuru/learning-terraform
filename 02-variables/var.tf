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
  default = true
}

variable "sample4" {
  default = [
    "hello",
    100,
    true
  ]
}

output "sample4" {
  value = var.sample4[0]
}

variable "sample5" {
  default = {
    string = "hello"
    number = 1000
    boolean = true
  }
}

output "sample5" {
  value = var.sample5["number"]
}

variable "sample6" {}
