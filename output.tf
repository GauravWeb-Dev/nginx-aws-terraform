
output "vpc_id" {
  value = aws_vpc.my_vpc.id
}
output "public_subnet_id" {
  value = aws_subnet.public-subnet.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.nginxserver.public_ip
}

output "instance_url" {
  description = "The URL to access the Nginx server"
  value       = "http://${aws_instance.nginxserver.public_ip}"
}