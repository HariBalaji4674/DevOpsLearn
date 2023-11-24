module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.14.4"
  
  name = "main"
  cidr = "10.0.0.0/16"

  azs = ["us-east-1a", "us-east-1b"]

  private_subnets = []
}