terraform {
  backend "s3" {
    bucket         = "terraformbackupsmeet"
    key            = "Practice/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_lock_smeet"
    encrypt        = true
  }
}
