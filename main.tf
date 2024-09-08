provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "dataeng_bucket" {
  bucket = "dataeng-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 10
  special = false
  upper   = false
}