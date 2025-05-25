resource "random_id" "bucket_id" {
  byte_length = 4
}

# S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-assignment-${random_id.bucket_id.hex}"
  force_destroy = true

  tags = {
    Name = "TerraformOstadS3"
  }
}