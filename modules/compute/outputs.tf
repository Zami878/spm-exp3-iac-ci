output "web_public_ips" {
  description = "Public IPs of the web servers"
  value       = aws_instance.web[*].public_ip
}

output "db_private_ip" {
  description = "Private IP of the database"
  value       = aws_instance.db.private_ip
}
