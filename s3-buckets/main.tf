provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "garlapati1"

  tags = {
    Name        = "garlapati1"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "garlapati2"

  tags = {
    Name        = "garlapati2"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
