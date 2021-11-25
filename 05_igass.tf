resource "aws_route_table_association" "wook_igas_puba" {
  subnet_id = aws_subnet.wook_puba.id
  route_table_id = aws_route_table.wook-rt.id
}

resource "aws_route_table_association" "wook_igas_pubd" {
  subnet_id = aws_subnet.wook_pubd.id
  route_table_id = aws_route_table.wook-rt.id
}