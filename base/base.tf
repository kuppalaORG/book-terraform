provider "aws" {
  region = var.region
}

resource "aws_instance" "base" {
  ami           = var.ami[var.region]
  instance_type = var.ami.type
  vpc_security_group_ids = var.security_group_ids[0]
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
  

}