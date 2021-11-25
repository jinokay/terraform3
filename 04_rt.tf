resource "aws_route_table" "wook-rt" {
  vpc_id = aws_vpc.wook_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wook_ig.id
  }
  tags = {
    "Name" = "wook-rt"
  }
}