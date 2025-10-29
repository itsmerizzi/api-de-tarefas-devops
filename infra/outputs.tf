output "instance_public_ip" {
  description = "Endereço público da instância EC2"
  value       = aws_instance.api_instance.public_ip
}
