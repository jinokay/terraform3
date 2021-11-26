resource "aws_launch_configuration" "wook_lacf" {
  name                 = "wook-lacf"
  image_id             = aws_ami_from_instance.wook_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.wook_sg.id]
  key_name             = "wook1-key"
  user_data            = <<-EOF
            #!/bin/bash
            systemctl start httpd
            systemctl enable httpd
            EOF
}