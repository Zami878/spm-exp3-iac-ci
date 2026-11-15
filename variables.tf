variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "project" {
  description = "Name prefix for all resources"
  type        = string
  default     = "spm-exp2"
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR of the public (web) subnet; must lie inside the VPC CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR of the private (database) subnet; must not overlap the public one"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az" {
  description = "Availability zone for both subnets"
  type        = string
  default     = "ap-south-1a"
}

variable "admin_cidr" {
  description = "Your public IP as x.x.x.x/32 - the only source allowed to SSH"
  type        = string
}

variable "key_name" {
  description = "Name of an existing EC2 key pair in the region (name only, never the file)"
  type        = string
}

variable "web_count" {
  description = "Number of web servers"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
