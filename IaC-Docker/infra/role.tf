resource "aws_iam_role" "beanstalk_ec2" {
  name = "beanstalk-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Sid = ""
            Principal = {
                Service = "ec2.amazonaws.com"
            }
        },
    ]
  })
}
resource "aws_iam_role_policy" "beanstalk_ec2_policy" {
  name = "beanstalk-ec2-policy"
  role = aws_iam_role.beanstalk_ec2.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
           "cloudwatch:PutMericData",
           "ds:CreateComputer",
           "ds:DescribeDirectories",
           "ec2:DescribeDirectories",
           "logs:*",
           "ssm:*",
           "ec2messages:*",
           "ecr:GetAuthorizationToken",
           "ecr:BatchCheckLayerAvailability",
           "ecr:GetDownloadUrlForLayer",
           "ecr:GetRepositoryPolicy",
           "ecr:DescribeRepositories",
           "ecr:ListImages",
           "ecr:DescribeImages",
           "ecr:BatchGetImage ",
           "s3:*"

        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
resource "aws_iam_instance_profile" "beanstalk_ec2_profile" {
  name = "beanstalk-ec2-profile"
  role = aws_iam_role.beanstalk_ec2.name
}

 