provider "aws" { 
 # access_key = "XXXXX"
 # secret_key = "YYYYY"
 region = "us-west-2"
}


resource "aws_instance" "web" {
  #ami = "ami-0b9f27b05e1de14e9"
  ami = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
  
  tags = { 
    Name = "AmitV"
  }

}
