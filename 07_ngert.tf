resource "aws_route_table" "wook_ngwrt" {
  vpc_id = aws_vpc.wook_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.wook_ngw.id
  }
  tags = {
    "Name" = "wook-ngwrt"
  }
}