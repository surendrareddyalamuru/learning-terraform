data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["762942456166"]
}

output "ami" {
  value = data.aws_ami.example
}