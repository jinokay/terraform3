resource "aws_eip" "wook_ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "wook_ngw" {
    allocation_id = aws_eip.wook_ngw_ip.id
    subnet_id = aws_subnet.wook_pub[0].id
    tags = {
      "Name" = "${var.name}-ngw"
    }
}

resource "aws_route_table" "wook_ngwrt" {
  vpc_id = aws_vpc.wook_vpc.id

  route {
      cidr_block = var.cidr_route
      gateway_id = aws_nat_gateway.wook_ngw.id
  }
  tags = {
    "Name" = "${var.name}-ngwrt"
  }
}

resource "aws_route_table_association" "wook_ngwasa_pri" {
  count = length(var.pri_sub)
  subnet_id = aws_subnet.wook_pri[count.index].id
  route_table_id = aws_route_table.wook_ngwrt.id
}


resource "aws_route_table_association" "wook_ngwasa_pridb" {
  count = length(var.pri_subdb)
  subnet_id = aws_subnet.wook_pridb[count.index].id
  route_table_id = aws_route_table.wook_ngwrt.id
}
