provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e670eb768a5fc3d4" # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"

  tags = {
    Name = "github-actions-ec2"
  }
}
