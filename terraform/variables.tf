# ========================================
# Core Project Configuration
# ========================================

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for tagging resources"
  type        = string
  default     = "mega-devops-platform"
}

variable "environment" {
  description = "Deployment environment (dev, stage, prod)"
  type        = string
}

# ========================================
# EC2 Configuration
# ========================================

variable "instance_type" {
  description = "EC2 instance type based on environment"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name for SSH access"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux recommended)"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
}

# ========================================
# Networking Configuration
# ========================================

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

# ========================================
# Application Configuration (for Ansible)
# ========================================

variable "app_port" {
  description = "Port on which application runs"
  type        = number
  default     = 80
}
