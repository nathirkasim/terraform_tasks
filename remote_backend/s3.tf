###################
#storing statefiles in remote backends 
#author :nathir
#date:25/09/2025
###################
provider "aws" {
  region = "eu-north-1"
}

# Step 1: S3 bucket for remote state
resource "aws_s3_bucket" "state-bucket" {
  bucket = "#your bucket name"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

# Step 2: DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "#your table name"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
