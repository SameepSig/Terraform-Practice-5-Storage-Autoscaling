resource "aws_instance" "sameep_terraform_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.security_group_id] # Attach the security group
  subnet_id = var.sameep_terraform_subnet_1
  associate_public_ip_address = true

  tags = {
    Name = "sameep_terraform_webserver_public_1"
    silo = "intern2"
    owner = "sameep.sigdel"
    terraform = "true"
    environment = "dev"
  }
}