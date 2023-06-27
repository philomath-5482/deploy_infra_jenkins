terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
 backend "s3" {
    bucket         = "week-24-project-545501"
    key            = "terra-backend/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}
  

# Configure the AWS Provider
provider "aws" {
  region ="us-east-1"
 }




