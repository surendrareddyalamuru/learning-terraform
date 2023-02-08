variable "sample" {
  default = ["abe", 123]
}

output "sample" {
  value = element(var.sample, 0)
}

varible "sample1" {
  default = {
    orange = {
      Name = orange
      count = 100
    }
    apple = {
      Name = apple
      count = 100
    }
  }
}

output "sample1" {
  value = lookup(var.sample1, apple, null)

}