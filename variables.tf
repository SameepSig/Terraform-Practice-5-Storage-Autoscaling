variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    default = "10.0.0.0/16"  
    type = string
}

variable "subnet_cidr" {
    description = "value of subnet cidr"
    default = "10.0.1.0/24"
    type = string
}

variable "subnet_cidr_private_1" {
    description = "value of private subnet cidr 1"
    default = "10.0.3.0/24"
    type = string
}

variable "subnet_cidr_private_2" {
    description = "value of private subnet cidr 2"
    default = "10.0.4.0/24"
    type = string
}

variable "all_cidr_block" {
    description = "All CIDR block i.e 0.0.0.0/0"
    default = "0.0.0.0/0"
    type = string
}

variable "ami" {
    description = "default ami"
    default = "ami-04b70fa74e45c3917"
    type = string
}

variable "instance_type" {
  description = "instance type"
  default = "t2.micro"
}

variable "key_name" {
    description = "default keypair"
    default = "Sameep-key-pair"
}

variable "availability_zone_1" {
    description = "Availability zone for subnet"
    default = "us-east-1a"
    type = string
}

variable "availability_zone_2" {
    description = "Availability zone for subnet"
    default = "us-east-1b"
    type = string
}