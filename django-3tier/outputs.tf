output "app_instance_public_ip" {
  value = aws_instance.django_app.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}