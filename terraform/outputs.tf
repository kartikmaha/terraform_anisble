# ========================================
# Terraform Outputs (Clean EC2 Setup)
# ========================================

# ========================================
# Networking Outputs
# ========================================

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = aws_subnet.public[*].id
}

# ========================================
# Security
# ========================================

output "security_group_id" {
  description = "Security group for EC2 instance"
  value       = aws_security_group.app_sg.id
}

# ========================================
# EC2 Instance Outputs (CRITICAL)
# ========================================

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.app_server.public_dns
}

# 🔥 THIS IS USED BY ANSIBLE
output "instance_ip" {
  description = "Public IP used for Ansible inventory"
  value       = aws_instance.app_server.public_ip
}

# ========================================
# SSH Access Helper
# ========================================

output "ssh_command" {
  description = "SSH command to connect to EC2"
  value       = "ssh -i \"D:/Project/terra-key\" ec2-user@${aws_instance.app_server.public_ip}"
}

# ========================================
# Application Access
# ========================================

output "application_url" {
  description = "URL to access deployed application"
  value       = "http://${aws_instance.app_server.public_ip}:${var.app_port}"
}

# ========================================
# Deployment Info
# ========================================

output "deployment_info" {
  description = "Helpful deployment summary"
  value = <<-EOT

========================================
🚀 DevOps Deployment Complete
========================================

Environment: ${var.environment}

EC2 Public IP: ${aws_instance.app_server.public_ip}

Application URL:
http://${aws_instance.app_server.public_ip}:${var.app_port}

SSH Access:
ssh -i "D:/Project/terra-key" ec2-user@${aws_instance.app_server.public_ip}

Next Steps:
1. Verify app is running in browser
2. SSH into instance if needed
3. Check Docker container: docker ps

========================================
EOT
}
