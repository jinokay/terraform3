resource "aws_lb_target_group_attachment" "wook_tgatt" {
  target_group_arn = aws_lb_target_group.wook_albtg.arn
  target_id        = aws_instance.wook_web.id
  port             = 80
}