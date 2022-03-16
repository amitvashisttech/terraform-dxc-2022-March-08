provider "aws" { 
version = "3.20"
region  = "us-east-2"
}


provider "aws" { 
version = "3.20"
region  = "us-west-2"
alias   = "us-west-2"
}

variable "zones_east" {
  default = ["us-east-2a", "us-east-2b"]
}

variable "zones_west" {
  default = ["us-west-2a", "us-west-2c"]
}


resource "aws_instance" "east_frontend" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  availability_zone = var.zones_east[count.index]
  count             = 2
  depends_on    = [ aws_instance.east_backend ]
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "west_frontend" {
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
  availability_zone = var.zones_west[count.index]
  count             = 2
  depends_on    = [ aws_instance.west_backend ]
  provider      = aws.us-west-2
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_instance" "east_backend" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  availability_zone = var.zones_east[count.index]
  count             = 2
  lifecycle {
    prevent_destroy = false
  }
}


resource "aws_instance" "west_backend" {
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
  availability_zone = var.zones_west[count.index]
  count             = 2
  provider      = aws.us-west-2
  lifecycle {
    prevent_destroy = false
  }
}

output "PublicIP_East_Frontend" {
  value = aws_instance.east_frontend.*.public_ip
}

output "PublicIP_East_Backend" {
  value = aws_instance.east_backend.*.public_ip
}

