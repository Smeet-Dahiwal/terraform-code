output "vpc_id" {
    value = aws_vpc.main.id
}

output "vpc_name" {
  value = "3tier-main-vpc"
}

output "public_subnet_1" {
  value = aws_subnet.public_subnet_1.arn
}

output "public_subnet_2" {
  value = aws_subnet.public_subnet_2.id
  description = "Public subnet 2 ID"
}

output "private_subnet_1" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2" {
  value = aws_subnet.private_subnet_2.id
}

output "frontend_public_ip" {
  value = aws_instance.frontend.public_ip
}

output "frontend_private_ip" {
  value = aws_instance.frontend.private_ip
}

output "backend_private_ip" {
  value = aws_instance.backend.private_ip
}