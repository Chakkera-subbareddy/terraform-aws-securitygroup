terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

 terraform {
  backend "s3" {
    bucket = "subba-tf-remote-state"
    key    = "vpc-test-sg-subba" # you should have unique keys with the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "xyz-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
