resource "aws_ami_from_instance" "wook_ami" {
  name               = "wook-aws-ami"
  source_instance_id = aws_instance.wook_web.id

  depends_on = [
    aws_instance.wook_web
  ]

  tags = {
    "Name" = "wook-ami"
  }
}