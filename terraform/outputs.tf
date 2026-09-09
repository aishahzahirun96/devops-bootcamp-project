output "web_server_public_ip" {
  description = "IP Awam untuk Web Server (Elastic IP)"
  value       = aws_eip.web_eip.public_ip
}

output "web_private_ip" {
  value = aws_instance.web.private_ip
}

output "ssm_web" {
  value = "aws ssm start-session --region ap-southeast-1 --target ${aws_instance.web.id}"
}

output "ssm_controller" {
  description = "Arahan untuk log masuk ke Ansible Controller"
  value       = "aws ssm start-session --target ${aws_instance.controller.id}"
}

output "ssm_monitoring" {
  description = "Arahan untuk log masuk ke Monitoring Server"
  value       = "aws ssm start-session --target ${aws_instance.monitoring.id}"
}

output "controller_private_ip" {
  description = "IP Peribadi untuk Ansible Controller"
  value       = aws_instance.controller.private_ip
}

output "monitoring_private_ip" {
  description = "IP Peribadi untuk Monitoring Server"
  value       = aws_instance.monitoring.private_ip
}

output "controller_instance_id" {
  value = aws_instance.controller.id
}

output "monitoring_instance_id" {
  value = aws_instance.monitoring.id
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app_repo.repository_url
}

output "web_instance_id" {
  value = aws_instance.web.id
}

output "aws_account_id" {
  value = data.aws_caller_identity.my_account.account_id
}