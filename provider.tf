provider "aws" {
  region     = var.aws_region
  access_key = var.AWS_ACCESS_KEY_ID       # Changed to lower case to maintain consistency
  secret_key = var.AWS_SECRET_ACCESS_KEY   # Changed to lower case to maintain consistency
}

# It is recommended to manage AWS credentials through the AWS CLI configuration
# or environment variables rather than hardcoding them in Terraform files.
# Example: export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY

