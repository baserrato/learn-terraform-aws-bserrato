terraform {
  cloud {
    organization = "ferrets"

    workspaces {
      name = "bserrato-aws-terraform"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  assume_role {
    role_arn = var.sandbox_arn_role
  }
}

resource "aws_instance" "bserrato_app_server" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0b5144959cf536b31"]
  tags = {
    Name        = "bserrato-dob-terraform"
    Client      = "Internal"
    Project     = "DOB"
    Environment = "Demo"
    Application = "Terraform EC2 Instance building"
    Owner       = "Benjamin Serrato"
  }
}
