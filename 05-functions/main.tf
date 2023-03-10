variable "sample" {
  default = ["abe", 123]
}

output "sample" {
  value = element(var.sample, 0)
}

variable "sample1" {
  default = {
    orange = {
      name = "orange"
      count = 100
    }
    apple = {
      name = "apple"
      count = 100
    }
  }
}

output "sample1" {
  value = lookup(lookup(var.sample1, "apple", null), "count", 0)

}

variable "list" {
  default = ["a", "b", "c"]
}

output "list" {
  value = [for s in var.list : upper(s)]
}

variable "map" {
  default = {
    b = "blue"
    g = "green"
    y = "yellow"
  }
}

output "map" {
  value = [for k, v in var.map : "color code - ${k} | color - ${v}"]
}

variable "map1" {
  default = {
    c1 = {
      color_code = "y"
      color = "yellow"
    }
    c2 = {
      color_code = "b"
      color = "blue"
    }
  }
}

output "map1" {
  value = [for k, v in var.map1 : "color code - ${v.color_code} | color - ${v.color}"]
}