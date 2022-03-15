terraform { 
 required_providers {
   aws = {
      version = ">=3.63.0, <=3.65.0"
    }
  }

}


provider "aws" {
 region = "us-east-2"
}


variable "zones" {
 default = ["us-east-2a", "us-east-2b"]
}


resource "aws_instance" "us_east_frontend" {
  count = 2
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  availability_zone = var.zones[count.index]
}
