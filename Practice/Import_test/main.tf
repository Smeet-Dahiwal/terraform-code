provider "aws" {
    region = "us-east-1"
}

import {
  id = "i-001b77df28b993f23"
  to = aws_instance.example
}

# We need to run following command
# terraform plan -generate-config-out=example.tf  <-- It will create a file example.tf 

# To create the state file we need to run below command
# terraform import aws_instance.example instance_id
