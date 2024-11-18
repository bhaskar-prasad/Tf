provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "SimpleInstance"
  }
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-086991efecfeed1f4"
}

variable "instance_type" {
  default = "t2.micro"
}

