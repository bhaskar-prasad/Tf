variable "aws_region" {
  description = "The AWS region to deploy resources to"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
}

variable "aws_access_key" {
  description = "The AWS access key for authentication"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "The AWS secret access key for authentication"
  type        = string
  sensitive   = true
}
