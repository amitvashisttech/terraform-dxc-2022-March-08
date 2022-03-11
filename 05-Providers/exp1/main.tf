provider "aws" { 
 region = "us-west-2"
}

provider "aws" { 
 region = "us-east-2"
 alias = "myregion"
}



resource "aws_instance" "frontend" {
  ami = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"
}




resource "aws_instance" "backend" {
  provider = aws.myregion
  ami = "ami-05803413c51f242b7"
  instance_type = "t2.micro"
}
