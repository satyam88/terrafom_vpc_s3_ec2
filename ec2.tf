data "aws_key_pair" "mykey" {
  key_name           = "vpcdemo"
  include_public_key = true
}

data "aws_ami" "amazon_linux" {
  owners      = ["amazon"]
  most_recent = true


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }
}

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_size
  count         = var.instance_count
  key_name      = data.aws_key_pair.mykey.key_name

  tags = {
    Name = "Terraform-${count.index + 1}"
  }
}

