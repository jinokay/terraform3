resource "aws_ami_from_instance" "wook_ami" {
  name               = "${var.name}-aws-ami"
  source_instance_id = aws_instance.wook_web.id

  depends_on = [
    aws_instance.wook_web
  ]

  tags = {
    "Name" = "${var.name}-ami"
  }
}