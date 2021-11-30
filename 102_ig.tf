resource "aws_internet_gateway" "wook_ig" {
  vpc_id = aws_vpc.wook_vpc.id

  tags = {
    "Name" = "${var.name}-ig"
  }
}

resource "aws_route_table" "wook-rt" {
  vpc_id = aws_vpc.wook_vpc.id

  route {
    cidr_block = var.cidr_route
    gateway_id = aws_internet_gateway.wook_ig.id
  }
  tags = {
    "Name" = "${var.name}-rt"
  }
}

resource "aws_route_table_association" "wook_igas_pub" {
  count = 2
  subnet_id = aws_subnet.wook_pub[count.index].id
  route_table_id = aws_route_table.wook-rt.id
}
