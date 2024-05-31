resource "aws_db_subnet_group" "sameep_db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [var.sameep_terraform_subnet_private_1,var.sameep_terraform_subnet_private_2]

  tags = {
    Name = "sameep DB subnet group"
    silo = "intern2"
    owner = "sameep.sigdel"
    terraform = "true"
    environment = "dev"
  }
}

resource "aws_db_instance" "sameep_private_db_1" {
  allocated_storage    = 20
  max_allocated_storage = 100 # To enable autoscaling, define max storage argument higher than allocated storage
  db_name              = "intern_project_db"
  engine               = "postgres"
  engine_version       = "16.3"
  instance_class       = "db.t3.micro"
  username             = "intern_admin"
  password             = "root1234"
  # manage_master_user_password = true
  backup_retention_period     = 7
  storage_type = "gp2"
  skip_final_snapshot  = true
  multi_az = false
  backup_window = "01:00-02:00"
  maintenance_window = "Mon:03:00-Mon:04:00"
  deletion_protection = true # When deletion protection is enabled, we can't change the az of the db instance as terraform will first try to delete the existing az and create new one. But existing az can't be deleted as its network interface has db instance attached to it which is protected from deletion.
  db_subnet_group_name = aws_db_subnet_group.sameep_db_subnet_group.name
  vpc_security_group_ids = [var.db_security_group_id]

  tags = {
    Name = "sameep DB"
    silo = "intern2"
    owner = "sameep.sigdel"
    terraform = "true"
    environment = "dev"
  }
}