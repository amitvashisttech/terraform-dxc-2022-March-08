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

variable "multi-region-deployment" {
  default = false
}

variable "project-name" {
  default = "Terraform-Demo"
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

  tags = {
     #Name = "${join("-", list(var.project-name, "Frontend"))}-${count.index + 1}"
     Name = "${join("-", tolist([var.project-name, "Frontend"]))}-${count.index + 1}"
  }
}

resource "aws_instance" "west_frontend" {
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
  availability_zone = var.zones_west[count.index]
  count             = var.multi-region-deployment ? 2 : 0 
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
  tags = {
     #Name = "${join("-", list(var.project-name, "Backend"))}-${count.index + 1}"
     Name = "${join("-", tolist([var.project-name, "Backend"]))}-${count.index + 1}"
  }
}


resource "aws_instance" "west_backend" {
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
  availability_zone = var.zones_west[count.index]
  count             = var.multi-region-deployment ? 2 : 0
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



output "tag_name" {
  value = concat(aws_instance.east_backend.*.tags.Name, aws_instance.east_frontend.*.tags.Name)
}

