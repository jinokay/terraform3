resource "aws_lb" "wook_alb" {
  name               = "wook-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.wook_sg.id]
  subnets            = [aws_subnet.wook_puba.id, aws_subnet.wook_pubc.id]
  tags = {
    "Name" = "wook-alb"
  }
}

output "dns_name" {
  value = aws_lb.wook_alb.dns_name
}