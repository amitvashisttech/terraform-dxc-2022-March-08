resource "aws_instance" "frontend" { 
  ami = data.aws_ami.myami.id
  instance_type = lookup(var.instance_type, terraform.workspace) 
  count =  lookup(var.instance_count, terraform.workspace)
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = { 
    Name = local.default_name
  }

}
