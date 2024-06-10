# Create multiple S3 buckets using the count meta-argument
resource "aws_s3_bucket" "bucket1" {
  count = 2  # Specifies that two instances of this resource should be created

  # Tags to identify the resource, incorporating the count index
  tags = {
    Name = "test-bucket-${count.index}"  # Dynamically set the Name tag based on the count index
  }
}
