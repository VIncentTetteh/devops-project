resource "aws_dynamodb_table" "tfbackendtable" {
  name         = "${var.env}-deploymenttfbackend"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-${var.env}-deploymenttfbackend"
    Environment = var.env
  }
}