variable "region" {
  type = string
  description = "The Aws region"
  default = "us-east-1"
}

variable "ami" {
  type = map(string)
  default = {
    us-east-1 = "ami-09c813fb71547fc4f"
    type = "t2.micro"
  }
}

variable "security_group_ids" {
  type = list(string)
  description = "List of security group ids"
  default = ["sg-01c7b204ed4d4544b"]
}
