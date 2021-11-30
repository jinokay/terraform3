resource "aws_db_instance" "wook_mydb" {
  allocated_storage      = var.storage_size
  storage_type           = var.storage_type
  engine                 = var.sql_engine
  engine_version         = var.sql_engine_ver
  instance_class         = var.db_type
  name                   = var.db_name
  identifier             = var.db_name
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = var.parameter_group_name
  availability_zone      = "${var.region}${var.ava_zone[0]}"
  db_subnet_group_name   = aws_db_subnet_group.wook_dbsb.id
  vpc_security_group_ids = [aws_security_group.wook_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "${var.name}-db"
  }
}

resource "aws_db_subnet_group" "wook_dbsb" {
  name       = "${var.name}-dbsb"
  subnet_ids = [aws_subnet.wook_pridb[0].id,aws_subnet.wook_pridb[1].id]
  tags = {
    "Name" = "${var.name}-dbsb"
  }
}