variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = "default"
}

## VPC
variable "environment" {
  description = "Environment variable used as a prefix (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

variable "owners" {
  description = "Organization or team that owns the infrastructure"
  type        = string
  default     = "GabrielBello"
}

variable "name" {
  description = "Base name for the VPC"
  type        = string
}

variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones to use"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnets CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnets CIDRs"
  type        = list(string)
}

variable "database_subnets" {
  description = "List of database subnets CIDRs"
  type        = list(string)
}

variable "create_database_subnet_group" {
  description = "Create a database subnet group"
  type        = bool
  default     = true
}

variable "create_database_subnet_route_table" {
  description = "Create a route table for database subnets"
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway for private subnets"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Use a single NAT Gateway for all private subnets"
  type        = bool
  default     = true
}

## S3

variable "bucket_configs" {
  description = "Buckets configuration map"
  type = map(object({
    bucket_name = string
    tags        = map(string)
  }))
}
