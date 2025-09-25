# Terraform Service Creations
This Terraform module creates AWS infrastructure including multiple EC2 instances and an S3 bucket.
# Files
- `provider.tf` – Configures the AWS provider.
- `ec2.tf` – Creates multiple EC2 instances (`t3.micro`) with a `count` variable.
- `s3.tf` – Creates an S3 bucket.
