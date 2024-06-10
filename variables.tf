variable "AWS_ACCESS_KEY" {
  type        = string
  # Consider removing or securely managing access keys through environment variables
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  # Consider removing or securely managing secret keys through environment variables
}

variable "aws_region" {
  description = "Region in which AWS resources are to be created."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}
