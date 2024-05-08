resource "aws_s3_bucket" "app_backend" {
  bucket = "${var.env}-deploymenttfbackend"

  object_lock_enabled = true
  force_destroy = true

  tags = {
    Name = "${var.env}-deploymenttfbackend"
  }

}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.app_backend.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "backends3encry" {
  bucket = aws_s3_bucket.app_backend.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}