data "aws_ami" "myami" {
  most_recent = true
  owners = ["535963918700"]

 filter {
  name = "name"
  values = ["apache-ami-packer*"]
  }

}

