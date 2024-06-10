# Create multiple EC2 instances using count
resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.amz_linux2.id         # AMI ID from a data source
  instance_type          = var.instance_type                  # Instance type from a variable
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id,    # Reference to the SSH security group ID
                            aws_security_group.vpc_web.id]    # Reference to the Web security group ID
  count                  = 2                                  # Create two instances

  # Tags to identify each instance with a unique name based on its index
  tags = {
    Name = "count-demo-${count.index}"
  }
}

# Parse EC2 instance configurations from a YAML file and create instances accordingly
locals {
  # Decode YAML to a map structure from a file
  ec2instance = yamldecode(file("${path.module}/ec2instancefolder/ec2-instance.yaml"))

  # Create a list of maps from the YAML data for easier iteration
  ec2instance_list = [
    for value in local.ec2instance.ec2_instance_configuration : {
      name          = value.tag_name
      instance_type = value.instance_type
    }
  ]
}

resource "aws_instance" "ec2instance_example" {
  # Use for_each to iterate over each instance configuration
  for_each = { for instance in local.ec2instance_list : instance.name => instance }

  ami                    = data.aws_ami.amz_linux2.id  # AMI ID from a data source
  instance_type          = each.value.instance_type   # Type from local configuration
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]  # Security groups

  # Tags to identify the resource
  tags = {
    Name = each.value.name
  }
}
