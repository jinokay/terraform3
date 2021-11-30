data "aws_ami" "amzn" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}


resource "aws_instance" "wook_web" {
  ami                    = data.aws_ami.amzn.id
  instance_type          = var.ins_type
  key_name               = var.key
  vpc_security_group_ids = [aws_security_group.wook_sg.id]
  availability_zone      = "${var.region}${var.ava_zone[0]}"
  private_ip             = "10.0.0.11"
  subnet_id              = aws_subnet.wook_pub[0].id
  user_data = file("./dbdate.sh")

  tags = {
    "Name" = "${var.name}-web"
  }
}

resource "aws_eip" "wook_web_ip" {
  vpc                       = true
  instance                  = aws_instance.wook_web.id
  associate_with_private_ip = "10.0.0.11"
  depends_on                = [aws_internet_gateway.wook_ig]
}

output "public_ip" {
  value = aws_instance.wook_web.public_ip
}
