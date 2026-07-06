terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "my-first-bucket-kalana-dev-0001"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-first-bucket-kalana-dev-0001"

  
}

module "ec2" {
  source = "./modules/ec2"
  AMI_ID = "ami-0532913178263be11"
}

module "s3" {
  source = "./modules/s3"
}

output "public_ip" {
    value = module.ec2.public_ip
  
}