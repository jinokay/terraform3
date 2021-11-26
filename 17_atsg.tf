resource "aws_placement_group" "wook_pg" {
  name     = "wook-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "wook_atsg" {
  name                      = "wook-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 10
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.wook_lacf.name
#   placement_group           = aws_placement_group.wook_pg.id
  vpc_zone_identifier       = [aws_subnet.wook_puba.id, aws_subnet.wook_pubc.id]
}
