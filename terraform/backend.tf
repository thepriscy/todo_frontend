terraform {
  backend "s3" {
    bucket = "terraform-statefile-backend-230"
    key = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true
  }
}
