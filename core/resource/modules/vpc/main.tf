module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "${var.name}-${var.environment}"

  cidr = var.cidr
  azs  = var.azs

  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets

  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.tags
  vpc_tags = local.tags

  public_subnet_tags = {
    Name = "VPC Public Subnets"
  }
  private_subnet_tags = {
    Name = "VPC Private Subnets"
  }
  database_subnet_tags = {
    Name = "VPC Database Subnets"
  }

  map_public_ip_on_launch = true
}
