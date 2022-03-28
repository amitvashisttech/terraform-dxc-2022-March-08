terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-av"
    key    = "terraform-backend-av/terraform.tfstate"
    region = "us-west-2"
  }
}

