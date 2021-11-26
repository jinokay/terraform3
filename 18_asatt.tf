resource "aws_autoscaling_attachment" "wook_asatt" {
    autoscaling_group_name = aws_autoscaling_group.wook_atsg.id
    alb_target_group_arn = aws_lb_target_group.wook_albtg.arn
} 