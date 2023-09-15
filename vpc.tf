# Virtual Private Cloud
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-example-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  # database_subnets = [ "10.0.201.0/24", "10.0.202.0/24" ]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Aulas       = "true"
    Environment = "dev"
    Arquiteto   = "Dallison Lima"
  }
}

