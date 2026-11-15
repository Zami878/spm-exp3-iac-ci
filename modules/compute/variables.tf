variable "web_count" {
  description = "Number of web servers"
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet for the web tier"
  type        = string
}

variable "private_subnet_id" {
  description = "Subnet for the database"
  type        = string
}

variable "web_sg_id" {
  description = "Security group of the web tier"
  type        = string
}

variable "db_sg_id" {
  description = "Security group of the database"
  type        = string
}
