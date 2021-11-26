resource "aws_db_instance" "wook_mydb" {
  allocated_storage      = 20
  storage_type           = "gp2"    
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  name                   = "mydb"
  identifier             = "mydb"
  username               = "admin"
  password               = "rlawlsdnr1997"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.wook_dbsb.id
  vpc_security_group_ids = [aws_security_group.wook_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "wook-db"
  }
}

resource "aws_db_subnet_group" "wook_dbsb" {
  name       = "wook-dbsb"
  subnet_ids = [aws_subnet.wook_prida.id,aws_subnet.wook_pridc.id]
  tags = {
    "Name" = "wook-dbsb"
  }
}