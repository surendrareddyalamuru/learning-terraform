resource "aws_instance" "sample" {
  count = 2
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"

  tags = {
    Name = "test-$(count.index)"
  }
}
