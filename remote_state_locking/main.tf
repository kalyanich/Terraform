provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "locking_system" {
  name     = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "save_tfstate" {
  bucket = "terraform-remote-state-rk-ritvik"
}
