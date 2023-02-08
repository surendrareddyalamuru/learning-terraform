variable "sample" {
  default = ["abe", 123]
}

output "sample" {
  value = element(var.sample, 0)
}

variable "sample1" {
  default = {
    orange = {
      name = orange
      count = 100
    }
    apple = {
      name = apple
      count = 100
    }
  }
}

output "sample1" {
  value = lookup(var.sample1, apple, null)

}