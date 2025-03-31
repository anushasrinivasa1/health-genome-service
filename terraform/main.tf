provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "genome_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "genome_results" {
  bucket = "genome-results-storage"
  acl    = "private"
}

