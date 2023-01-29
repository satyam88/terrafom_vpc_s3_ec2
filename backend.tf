terraform {
  backend "s3" {
    bucket = "terraform-remote-bucket0002"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

