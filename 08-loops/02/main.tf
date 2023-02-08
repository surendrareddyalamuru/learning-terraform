resource "aws_instance" "sample" {
  count = length(var.instances)
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"

  tags = {
    Name = "test-${count.index}"
  }
}

output "public_ip" {
  value = aws_instance.sample.*.public_ip
}

variable "instances" {
  default = ["cart", "catalogue"]
}