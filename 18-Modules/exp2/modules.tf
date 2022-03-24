module "frontend" { 
  source = "./ec2"
}



module "backend" { 
  source = "./ec2"
  ec2_count = 2 
}
