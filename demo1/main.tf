

terraform {
    required_providers {
      aws = {
          source  = "hashicorp/aws"
      version = "~> 3.0"
      }
    }
  }

  # Configure the AWS Provider
provider "aws" {
    profile = "default"
  region = "us-east-2"

}

resource "aws_instance" "app_server" {
  ami = ami-07ffe7b5c785aaac1
  instance_type = "t3.micro"

  tags = {
    Name = "Gautam"
  }
}

