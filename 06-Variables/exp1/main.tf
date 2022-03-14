provider "aws" { 
 region = "us-west-2"
}

variable "zones" {
 default = ["us-west-2a", "us-west-2b"]
}

resource "aws_instance" "frontend" {
  ami = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"
  count = 2 
  availability_zone = var.zones[count.index]
}
