output "grandchild_vpc" {
  value = module.grandchild1.grandchild_vpc
}

module "grandchild1" {
  source = "./grandchild1"
}

resource "aws_vpc" "child" {
  cidr_block = "10.0.0.0/16"
}
