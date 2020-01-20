output "grandchild_vpc" {
  value = aws_vpc.grandchild.id
}

resource "aws_vpc" "grandchild" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "grandchild" {
  vpc_id = aws_vpc.grandchild.id
}
