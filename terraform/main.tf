provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-05cf1e9f73fbad2e2" # Amazon Linux 2
  instance_type = "t3.small"
  key_name      = "project-devops1"

  tags = {
    Name = "DevOps-Server"
  }
}
