
variable "aws_region" {
  default = "us-west-1"
}

variable "aws_account_name" {
  default = "terraform_user"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "aws-cali-transit-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for mgmt VPC"
  type        = string
  default     = "172.30.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-west-1a", "us-west-1b"]
}


variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["172.30.0.0/24", "172.30.1.0/24", "172.30.2.0/24", "172.30.3.0/24"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["172.30.1000.0/24", "172.30.101.0/24", "172.30.102.0/24", "172.30.103.0/24"]
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "True"
    Environment = "Project"
  }
}

/*

access_key = var.AWS_ACCESS_KEY_ID
secret_key = var.AWS_SECRET_ACCESS_KEY
variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

variable "username" {
  default = "admin"
}

variable "password" {}

variable "controller_ip" {}

variable "ctrl_password" {}

variable "aws_transit_instance_size" {
  default = "t2.micro"
}

variable "aws_transit1_region" {
  default = "us-east-2"
}

variable "aws_transit1_name" {
  default = "ace-iac-transit"
}

variable "aws_transit1_cidr" {
  default = "10.1.200.0/23"
}

variable "aws_spoke_instance_size" {
  default = "t2.micro"
}

variable "aws_spoke1_region" {
  default = "us-east-2"
}

variable "aws_spoke1_name" {
  default = "ace-iac-spoke1"
}

variable "aws_spoke1_cidr" {
  default = "10.1.211.0/24"
}

variable "aws_test_instance_size" {
  default = "t2.micro"
}
*/
