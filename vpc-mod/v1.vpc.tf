module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name = "my-tf-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  # nat gateways
  enable_nat_gateway = true
  single_nat_gateway = true

  # tags
    public_subnet_tags = {
    Type = "public-subnets"
  }

    private_subnet_tags = {
    Type = "private-subnets"
  }

}