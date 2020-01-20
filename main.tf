provider "aws" {
  region = "us-east-2"
}

module "child1" {
  source = "./child1"
}

module "child2" {
  source = "./child2"
}
