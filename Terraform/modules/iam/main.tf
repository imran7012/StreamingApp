resource "aws_iam_role" "ec2_role" {
  name = "travelmemory-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_instance_profile" "profile" {
  role = aws_iam_role.ec2_role.name
}
