variable "region" {
  description = "AWS region to deploy VPC"
  type        = string
  default     = "us-east-1"
}

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

// Variáveis Específicas da VPC
variable "name" {
  description = "Base name for the VPC"
  type        = string
  default     = "vpc"
}

variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones to use"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnets" {
  description = "List of public subnets CIDRs"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "private_subnets" {
  description = "List of private subnets CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "database_subnets" {
  description = "List of database subnets CIDRs"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24", "10.0.153.0/24"]
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
