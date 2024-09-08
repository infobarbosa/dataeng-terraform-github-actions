provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "dataeng_modulo_7_bucket" {
  bucket = "dataeng-modulo-7-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}