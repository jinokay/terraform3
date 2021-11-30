variable "region" {
  type    = string
  #default = "ap-northeast-2"
}

variable "name" {
  type    = string
  #default = "wook"
}

variable "key" {
  type    = string
  #default = "wook1-key"
}

variable "ava_zone" {
  type    = list(any)
  #default = ["a", "c"]
}

variable "cidr_main" {
  type    = string
  #default = "10.0.0.0/16"
}

/*--------------------------------------------------*/

variable "pub_sub" {
  type    = list(any)
  #default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "pri_sub" {
  type    = list(any)
  #default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "pri_subdb" {
  type    = list(any)
  #default = ["10.0.4.0/24", "10.0.5.0/24"]
}

/*--------------------------------------------------*/

variable "cidr_route" {
  type    = string
  #default = "0.0.0.0/0"
}

variable "cidr_routev6" {
  type    = string
  #default = "::/0"
}

variable "ssh" {
  type    = string
  #default = "ssh"
}

variable "http" {
  type    = string
  #default = "http"
}

variable "icmp" {
  type    = string
  #default = "icmp"
}

variable "mysql" {
  type    = string
  #default = "mysql"
}

variable "port_ssh" {
  type    = number
  #default = 22
}

variable "port_http" {
  type    = number
  #default = 80
}

variable "port_mysql" {
  type    = number
  #default = 3306
}

variable "port_zero" {
  type    = number
  #default = 0
}

variable "minus" {
  type    = number
  #default = -1
}

variable "pro_tcp" {
  type    = string
  #default = "tcp"
}

variable "pro_icmp" {
  type    = string
  #default = "icmp"
}

variable "pro_udp" {
  type    = string
  default = "udp"
}

variable "nul" {
  default = null
}

/*--------------------------------------------------*/

variable "load_type" {
  type    = string
  #default = "application"
}

variable "prot_HTTP" {
  type    = string
  #default = "HTTP"
}

variable "alb_path" {
  type    = string
  #default = "/health.html"
}

variable "alb_prot" {
  type    = string
  #default = "traffic-port"
}

/*--------------------------------------------------*/

variable "ins_type" {
  type    = string
  #default = "t2.micro"
}

variable "ins_role" {
  type    = string
 # default = "admin_role"
}

/*--------------------------------------------------*/

variable "storage_size" {
  type    = number
  #default = 20
}

variable "storage_type" {
  type    = string
  #default = "gp2"
}

variable "sql_engine" {
  type    = string
  #default = "mysql"
}

variable "sql_engine_ver" {
  type    = string
  #default = "8.0"
}

variable "db_type" {
  type    = string
  #default = "db.t2.micro"
}

variable "parameter_group_name" {
  type = string
  #default = "default.mysql8.0"
}

variable "db_name" {
  type    = string
  #default = "mydb"
}

variable "db_username" {
  type    = string
  #default = "admin"
}

variable "db_password" {
  type    = string
  #default = "rlawlsdnr1997"
}


/*--------------------------------------------------*/

variable "health_type" {
  type    = string
  #default = "EC2"
}

variable "pri_ip" {
  type    = string
  #default = "10.0.0.11"
}
