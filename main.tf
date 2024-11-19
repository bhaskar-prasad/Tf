provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "TerraformExampleInstance"
  }
}

# Output the instance's public IP address
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

# Output the instance's ID
output "instance_id" {
  value = aws_instance.example.id
}
