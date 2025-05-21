variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 Instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID of existing VPC"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for the instance"
  type        = string
}
