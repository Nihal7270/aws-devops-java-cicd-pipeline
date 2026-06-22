variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "Public subnet 1 CIDR"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "Public subnet 2 CIDR"
  type        = string
}

variable "az_1" {
  description = "Availability zone 1"
  type        = string
}

variable "az_2" {
  description = "Availability zone 2"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "common_ami" {
  description = "AMI for all EC2 instances"
  type        = string
}

variable "artifact_bucket_name" {
  description = "S3 bucket name for storing WAR artifacts"
  type        = string
}