output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.bserrato_app_server.public_ip
}

output "instance_public_dns" {
  description = "Public IPv4 DNS"
  value       = aws_instance.bserrato_app_server.public_dns
}

output "available_zones" {
  description = "Shows zones the ec2 instance is available"
  value       = aws_instance.bserrato_app_server.availability_zone
}
