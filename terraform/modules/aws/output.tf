output "instance_public_ip" {
  value       = aws_instance.development_vm.public_ip
  description = "Pulic IP Address of the AWS instance"
  sensitive   = false
}

output "instance_public_dns" {
  value       = aws_instance.development_vm.public_dns
  description = "Pulic DNS Address of the AWS instance"
  sensitive   = false
}

output "instance_username" {
  value       = "ubuntu"
  description = "Username of the AWS instance"
  sensitive   = false
}
