provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0a887e401f7654935"
  instance_type = "t3.micro"
  key_name      = "keypair devops"

  vpc_security_group_ids = ["sg-093a6df4d24eb8a5c"]

  tags = {
    Name = "terraform-devops-server"
  }
}
