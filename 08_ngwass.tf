resource "aws_route_table_association" "wook_ngwasa_pria" {
  subnet_id = aws_subnet.wook_pria.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_prid" {
  subnet_id = aws_subnet.wook_prid.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_prida" {
  subnet_id = aws_subnet.wook_prida.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_pridd" {
  subnet_id = aws_subnet.wook_pridd.id
  route_table_id = aws_route_table.wook_ngwrt.id
}