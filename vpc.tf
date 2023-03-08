module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  azs = var.availability_zones
  cidr = var.vpc_cidr

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnets = [for index in range(2) : 
                        cidrsubnet(var.vpc_cidr, 4, index)]
  private_subnets = [for index in range(2) : 
                        cidrsubnet(var.vpc_cidr, 4, index+2)]

  vpc_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }
}