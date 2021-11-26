resource "aws_subnet" "wook_puba" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wook-puba"
  }
}

resource "aws_subnet" "wook_pubc" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wook-pubc"
  }
}

resource "aws_subnet" "wook_pria" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wook-pria"
  }
}

resource "aws_subnet" "wook_pric" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wook-pric"
  }
}

resource "aws_subnet" "wook_prida" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wook-prida"
  }
}

resource "aws_subnet" "wook_pridc" {
  vpc_id            = aws_vpc.wook_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wook-pridc"
  }
}
