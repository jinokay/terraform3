resource "aws_lb" "wook_alb" {
  name               = "${var.name}-alb"
  internal           = false
  load_balancer_type = var.load_type
  security_groups    = [aws_security_group.wook_sg.id]
  subnets            = [aws_subnet.wook_pub[0].id, aws_subnet.wook_pub[1].id]
  tags = {
    "Name" = "${var.name}-alb"
  }
}

output "dns_name" {
  value = aws_lb.wook_alb.dns_name
}

resource "aws_lb_target_group" "wook_albtg" {
  name     = "${var.name}-albtg"
  port     = var.port_http
  protocol = var.prot_HTTP
  vpc_id   = aws_vpc.wook_vpc.id

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 5
    matcher             = "200"
    path                = var.alb_path
    port                = var.alb_prot
    protocol            = var.prot_HTTP
    timeout             = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "wook_alblis" {
  load_balancer_arn = aws_lb.wook_alb.arn
  port              = var.port_http
  protocol          = var.prot_HTTP

default_action {
  type             = "forward"
  target_group_arn = aws_lb_target_group.wook_albtg.arn
  }
}
/*resource "aws_lb_target_group_attachment" "wook_tgatt" {
  target_group_arn = aws_lb_target_group.wook_albtg.arn
  target_id        = aws_instance.wook_web.id
  port             = var.port_http
}*/