# AWS EC2 Instances Deployment with Terraform and a Yaml Config file

## Overview
This Terraform project automates the deployment of Amazon EC2 instances. It leverages AWS as the cloud provider and uses YAML configurations to specify instance details dynamically. The project is designed to illustrate best practices in infrastructure-as-code (IaC) deployment using Terraform.

## Project Structure
- **ec2-instancefolder/**: Contains YAML configurations for EC2 instances.
  - `ec2-instance.yaml`: YAML file with EC2 configuration details.
- **ami-datasource.tf**: Retrieves AMI details for the instances.
- **backend.tf**: Configures the Terraform backend.
- **ec2-instance.tf**: Terraform configuration for deploying EC2 instances based on YAML input.
- **provider.tf**: Sets up the AWS provider.
- **s3bucket.tf**: Configuration for S3 bucket deployment.
- **securitygroup.tf**: Configures security groups for EC2 instances.
- **variables.tf**: Defines variables used across the configurations.

## Use Cases
- **Educational Purposes**: Demonstrates how to integrate YAML configurations with Terraform to manage cloud infrastructure dynamically.
- **Development and Testing**: Ideal for developers needing to quickly spin up or tear down EC2 instances based on predefined YAML templates.
- **Automation of Repetitive Tasks**: Reduces manual configuration errors and speeds up the deployment of similar or identical infrastructure across different environments.

## Features
- **Dynamic Instance Configuration**: Utilizes a local YAML file to manage the configurations of multiple EC2 instances.
- **Security Group Management**: Ensures that appropriate security settings are configured for both SSH and web traffic.
- **Scalability**: Easily scale up or down the number of instances by adjusting the count in the YAML file or Terraform configuration.

## Getting Started
1. **Clone the Repository**:
  - git clone https://github.com/your-repository-url
2. **Navigate to the Project Directory**:
  - cd path-to-your-project
3. **Initialize Terraform**:
  - terraform init
4. **Apply the Terraform Configuration**:
  - terraform apply

## Prerequisites
- An AWS account
- Terraform installed
- AWS CLI configured with appropriate credentials
