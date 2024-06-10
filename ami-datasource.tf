# Data source to retrieve the most recent Amazon Linux 2 AMI
data "aws_ami" "amz_linux2" {
  most_recent = true          # Ensures that the most recent AMI is selected
  owners      = ["amazon"]    # Filters AMIs owned by Amazon

  # Filter to select AMIs based on name pattern
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  # Filter to ensure the root device type is EBS
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  # Filter to select AMIs with hardware virtual machine (HVM) virtualization
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # Filter to select AMIs with the x86_64 architecture
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
