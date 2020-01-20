variable "child_vpc_id" {
  type = string
}

resource "aws_vpc" "child" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "child" {
  vpc_id = var.child_vpc_id
}
