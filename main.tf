provider "aws" {
  region = "us-east-2"
}

output "parent_vpc" {
  value = aws_vpc.parent.id
}

module "child1" {
  source = "./child1"
}

module "child2" {
  source = "./child2"
  child_vpc_id = module.child1.grandchild_vpc
}

resource "aws_vpc" "parent" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "parent" {
  vpc_id = module.child1.grandchild_vpc
}
