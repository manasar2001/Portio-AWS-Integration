provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316" # Fixed Amazon Linux 2 AMI for us-east-1
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}