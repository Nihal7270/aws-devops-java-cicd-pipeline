variable "project_name" {
  description = "Project name prefix for resource naming"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "az_1" {
  description = "Availability zone for public subnet 1"
  type        = string
}

variable "az_2" {
  description = "Availability zone for public subnet 2"
  type        = string
}