# CIDR block for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR blocks for the public subnets
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# CIDR blocks for the private subnets
variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]

}
# Availability zones for the subnets
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}


# Name of the EKS cluster
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

# Desired number of nodes in the EKS node group
variable "desired_nodes" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 2
}

# Maximum number of nodes in the EKS node group
variable "max_nodes" {
  description = "Maximum number of nodes in the node group"
  type        = number
  default     = 3
}

# Minimum number of nodes in the EKS node group
variable "min_nodes" {
  description = "Minimum number of nodes in the node group"
  type        = number
  default     = 1
}

# AWS Account ID to configure for configmap auth
variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

#AWS IAM User to configure for configmap auth
variable "iam_user" {
  description = "IAM User"
  type        = string
}
