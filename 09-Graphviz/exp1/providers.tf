provider "aws" {
 region = "us-east-2"
}

provider "aws" {
 region = "us-west-2"
 alias  = "us-west-2"
}

resource "aws_instance" "us_east_frontend" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
}


resource "aws_instance" "us_west_frontend" {
  provider      = aws.us-west-2
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
}
