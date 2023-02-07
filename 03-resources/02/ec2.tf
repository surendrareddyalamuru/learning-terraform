provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
}