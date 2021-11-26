resource "aws_route_table_association" "wook_ngwasa_pria" {
  subnet_id = aws_subnet.wook_pria.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_pric" {
  subnet_id = aws_subnet.wook_pric.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_prida" {
  subnet_id = aws_subnet.wook_prida.id
  route_table_id = aws_route_table.wook_ngwrt.id
}

resource "aws_route_table_association" "wook_ngwasa_pridc" {
  subnet_id = aws_subnet.wook_pridc.id
  route_table_id = aws_route_table.wook_ngwrt.id
}