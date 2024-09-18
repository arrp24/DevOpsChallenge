# AWS region to deploy resources
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"  # Set default region or override it when deploying
}

# AMI for the EC2 instance (you should select an appropriate AMI ID for your region)
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-12345678"  # Replace with a valid AMI ID
}

# EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Number of EC2 instances (minimum 2 as required)
variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 2
}

# VPC ID where the resources will be deployed
variable "vpc_id" {
  description = "The ID of the VPC where the instances will be deployed"
  type        = string
  default     = "vpc-0abcdef1234567890"  # Replace with a valid VPC ID
}

# Subnet IDs for the EC2 instances and Load Balancer
variable "subnet_ids" {
  description = "The Subnet IDs to deploy resources in"
  type        = list(string)
}

# Security group ingress CIDR
