resource "aws_instance" "frontend" {
  ami                    = "ami-053b0d53c279acc90" # Use correct region-specific AMI
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  key_name               = "docker-test"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.lb_sg.id]

  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "backend" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.private_subnet_1.id
  key_name                    = "docker-test"
  associate_public_ip_address = false
  vpc_security_group_ids      = [aws_security_group.app_sg.id]

  tags = {
    Name = "Backend"
  }
}
