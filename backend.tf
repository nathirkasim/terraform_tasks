terraform {
  backend "s3" {
    bucket         = "#your_bucket_name"
    key            = "env/dev/terraform.tfstate"
    region         = "#your_region"
    dynamodb_table = "#your dynamo table name"
    encrypt        = true
  }
}

