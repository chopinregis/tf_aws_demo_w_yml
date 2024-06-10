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
