resource "aws_instance" "sample" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]
}

variable "SG_ID" {}