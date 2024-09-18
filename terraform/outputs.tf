# Output the DNS name of the Load Balancer
output "load_balancer_dns" {
  description = "The DNS name of the AWS Load Balancer"
  value       = aws_lb.app_lb.dns_name
}

# Output the public IP addresses of the EC2 instances
output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = [for instance in aws_instance.app : instance.public_ip]
}

# Output the instance IDs of the EC2 instances
output "instance_ids" {
  description = "The EC2 instance IDs"
  value       = [for instance in aws_instance.app : instance.id]
}

# Output the URL of the application (based on the Load Balancer)
output "application_url" {
  description = "The URL to access the application"
  value       = "http://${aws_lb.app_lb.dns_name}"
}
