resource "aws_s3_bucket" "artifact_bucket" {
  bucket = var.bucket_name

  tags = {
    Name    = var.bucket_name
    Project = var.project_name
  }
}

resource "aws_s3_bucket_versioning" "artifact_bucket_versioning" {
  bucket = aws_s3_bucket.artifact_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}