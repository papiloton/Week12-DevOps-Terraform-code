provider "aws" {
  region = var.region
}

# resource "aws_db_instance" "default" {
#   allocated_storage           = var.allocated_storage
#   db_name                     = var.db_name
#   engine                      = var.engine
#   engine_version              = var.engine_version
#   instance_class              = var.instance_class
#   username                    = var.username
#   parameter_group_name        = var.parameter_group_name
#   skip_final_snapshot         = var.skip_final_snapshot
#   backup_retention_period     = var.backup_retention_period
#   identifier                  = var.identifier
# }

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
