terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "locker-room-state"
    key    = "backend/terraform.tfstate"
    region = "us-east-1"
  }
}