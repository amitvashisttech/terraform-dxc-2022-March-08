module "amit_ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = var.ami[var.region]
  instance_type          = "t2.micro"
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
