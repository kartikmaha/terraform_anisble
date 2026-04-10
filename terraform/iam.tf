# ========================================
# IAM Role for EC2
# ========================================

resource "aws_iam_role" "ec2_role" {
  name = "${var.project_name}-${var.environment}-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2-role"
  }
}

# ========================================
# Attach SSM Policy (for SSH-less access)
# ========================================

resource "aws_iam_role_policy_attachment" "ssm_attach" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# ========================================
# Instance Profile
# ========================================

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.project_name}-${var.environment}-profile"
  role = aws_iam_role.ec2_role.name

  tags = {
    Name = "${var.project_name}-${var.environment}-profile"
  }
}
