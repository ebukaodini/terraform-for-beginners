terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key

  # For LocalStack testing
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    iam = "http://localhost:4566"
    s3  = "http://localhost:4566"
    ec2 = "http://localhost:4566"
    sts = "http://localhost:4566"
  }
}

resource "aws_instance" "webserver" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = var.my_instance_type
}

output "public_ip" {
  value       = aws_instance.webserver.public_ip
  description = "EC2 Public IP"
}
