resource "aws_eip" "wook_ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "wook_ngw" {
    allocation_id = aws_eip.wook_ngw_ip.id
    subnet_id = aws_subnet.wook_puba.id
    tags = {
      "Name" = "wook-ngw"
    }
}