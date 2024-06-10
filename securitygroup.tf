# Create a Security Group for SSH Traffic
resource "aws_security_group" "vpc_ssh" {
  name        = "vpc-ssh"      # Name of the security group
  description = "Dev VPC SSH"  # Description of what the security group is used for

  # Ingress rule to allow SSH access
  ingress {
    description = "Allow SSH access on port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Warning: This allows access from any IP address
  }

  # Egress rule to allow all outbound traffic
  egress {
    description = "Allow all IP addresses and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"            # '-1' represents all protocols
    cidr_blocks = ["0.0.0.0/0"]   # This specifies all IP addresses
  }

  # Tags to identify the resource
  tags = {
    Name = "vpc-ssh"
  }
}


# Create a Security Group for Web Traffic
resource "aws_security_group" "vpc_web" {
  name        = "vpc-web"      # Name of the security group
  description = "Dev VPC web"  # Description of what the security group is used for

  # Ingress rule to allow HTTP access
  ingress {
    description = "Allow HTTP access on port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Warning: This allows access from any IP address
  }

  # Ingress rule to allow HTTPS access
  ingress {
    description = "Allow HTTPS access on port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Warning: This allows access from any IP address
  }

  # Egress rule to allow all outbound traffic
  egress {
    description = "Allow all IP addresses and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # '-1' represents all protocols
    cidr_blocks = ["0.0.0.0/0"]  # This specifies all IP addresses
  }

  # Tags to identify the resource
  tags = {
    Name = "vpc-web"
  }
}
