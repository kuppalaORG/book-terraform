provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "base" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
}