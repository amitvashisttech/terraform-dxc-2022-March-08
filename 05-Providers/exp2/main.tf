terraform { 
 required_providers { 
  aws = { 
     version = ">=3.63.0, <=3.65.0"
   }
 }
}

provider "aws" { 
 region = "us-west-2"
}



resource "aws_instance" "frontend" {
  ami = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"
}

