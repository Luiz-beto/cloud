output "instance_id" {
  description = "ID da instância EC2 criada"
  value       = aws_instance.minha_instancia.id
}

output "public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.minha_instancia.public_ip
}
