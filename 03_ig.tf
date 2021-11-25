resource "aws_internet_gateway" "wook_ig" {
  vpc_id = aws_vpc.wook_vpc.id

  tags = {
    "Name" = "wook-ig"
  }
}