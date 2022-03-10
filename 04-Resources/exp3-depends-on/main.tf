provider "aws" { 
 # access_key = "XXXXX"
 # secret_key = "YYYYY"
 region = "us-west-2"
}


resource "aws_instance" "frontend" {
  ami = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"
   depends_on = [ aws_instance.backend ] 
}




resource "aws_instance" "backend" {
  ami = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"
}
