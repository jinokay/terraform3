resource "aws_launch_configuration" "wook_lacf" {
  name                 = "${var.name}-lacf"
  image_id             = aws_ami_from_instance.wook_ami.id
  instance_type        = var.ins_type
  iam_instance_profile = var.ins_role
  security_groups      = [aws_security_group.wook_sg.id]
  key_name             = var.key
  user_data            = <<-EOF
            #!/bin/bash
            systemctl start httpd
            systemctl enable httpd
            EOF
}

resource "aws_placement_group" "wook_pg" {
  name     = "${var.name}-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "wook_atsg" {
  name                      = "${var.name}-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 10
  health_check_type         = var.health_type
  desired_capacity          = 2
  force_delete              = false
  launch_configuration      = aws_launch_configuration.wook_lacf.name
#   placement_group           = aws_placement_group.wook_pg.id
  vpc_zone_identifier       = [aws_subnet.wook_pub[0].id, aws_subnet.wook_pub[1].id]
}


resource "aws_autoscaling_attachment" "wook_asatt" {
    autoscaling_group_name = aws_autoscaling_group.wook_atsg.id
    alb_target_group_arn = aws_lb_target_group.wook_albtg.arn
} 