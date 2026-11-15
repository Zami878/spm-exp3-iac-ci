variable "name" {
  description = "Name prefix"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  type        = string
}

variable "az" {
  description = "Availability zone"
  type        = string
}

variable "admin_cidr" {
  description = "Only source allowed to SSH to the web tier"
  type        = string
}
