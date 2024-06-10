# Terraform configuration specifying required providers and cloud settings
terraform {
  # Define required providers with their source details
  required_providers {
    aws = {
      source = "hashicorp/aws"  # Specifies that the AWS provider should be sourced from HashiCorp
    }
  }

  # Configuration for Terraform Cloud
  cloud {
    organization = "RegisOrganisation"  # Name of the organization in Terraform Cloud

    workspaces {
      name = "aws_demo_test"  # Name of the workspace within the organization
    }
  }
}
