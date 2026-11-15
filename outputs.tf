output "web_public_ips" {
  description = "Public IPs of the web servers"
  value       = module.compute.web_public_ips
}

output "db_private_ip" {
  description = "Private IP of the database server"
  value       = module.compute.db_private_ip
}
