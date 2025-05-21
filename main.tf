provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  count         = 2
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Jenkins-TF-Instance-${count.index + 1}"
  }
}
