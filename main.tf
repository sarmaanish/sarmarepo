terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami             = "ami-03a933af70fa97ad2"
  instance_type   = "t3.micro"
  key_name        = "temp1"
  user_data	= file("file.sh")
  security_groups = [ "AllTraffic" ]

  tags = {
    Name = "Terraform"
  }
}
