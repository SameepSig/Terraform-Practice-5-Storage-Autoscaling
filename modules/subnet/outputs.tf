output "public_subnet_1" {
    value = aws_subnet.sameep_terraform_subnet_1.id
}

output "private_subnet_1" {
    value = aws_subnet.sameep_terraform_subnet_private_1.id
}

output "private_subnet_2" {
    value = aws_subnet.sameep_terraform_subnet_private_2.id
}