# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "Ubuntu"
  }
}

#resource "aws_vpc" "my_vpc" {
#  cidr_block = "10.0.0.0/16"
#
#  tags = {
#    Name = "tf-example"
#  }
#}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

  