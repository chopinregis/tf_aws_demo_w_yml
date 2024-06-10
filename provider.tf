provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key   # Changed to lower case to maintain consistency
  secret_key = var.aws_secret_key   # Changed to lower case to maintain consistency
}

# It is recommended to manage AWS credentials through the AWS CLI configuration
# or environment variables rather than hardcoding them in Terraform files.
# Example: export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY

