provider "aws" {
  region = "us-east-2"
}



resource "aws_instance" "frontend" {
  count         = 2
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  depends_on    = [aws_instance.backend]
  lifecycle {
    create_before_destroy = true
  }

}




resource "aws_instance" "backend" {
  count         = 1
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  lifecycle {
    prevent_destroy = false
  }

}

provider "aws" {
 region = "us-west-2"
 alias  = "us-west-2"
}

resource "aws_instance" "us_west_frontend" {
  provider      = aws.us-west-2
  ami           = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
}

