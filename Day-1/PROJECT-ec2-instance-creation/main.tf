provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0953476d60561c955"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"

    tags = {
        Name = "MyTerraformInstance"
     }
}

resource "aws_instance" "gui_instance_1" {
  ami = "ami-0953476d60561c955"
  instance_type = "t2.micro"
  subnet_id = "subnet-07d6bd1a6ca152dc1"
  key_name = "docker-test"
  tags = {
        "Name" = "docker-master"
    }
}
# resource "aws_instance" "gui_instance_2" {
#   # No need to define anything yet
# }

resource "aws_s3_bucket" "mys3" {
  bucket = "smeet-terraform-practice"
  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}

output "IPaddress" {
  value = aws_instance.example.public_ip
}

output "aws_s3_bucket_name" {
    value = aws_s3_bucket.mys3.id
}