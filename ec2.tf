provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myec20" {
  ami = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "tfvideo40s3"
    key = "s3storage/terraform.tfstate"
    region = "ap-south-1"
  }
}
