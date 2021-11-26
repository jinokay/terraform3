resource "aws_route_table_association" "wook_igas_puba" {
  subnet_id = aws_subnet.wook_puba.id
  route_table_id = aws_route_table.wook-rt.id
}

resource "aws_route_table_association" "wook_igas_pubc" {
  subnet_id = aws_subnet.wook_pubc.id
  route_table_id = aws_route_table.wook-rt.id
}