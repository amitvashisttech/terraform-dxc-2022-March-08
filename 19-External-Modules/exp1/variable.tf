variable "region" { 
  default = "us-east-2"
}

variable "key_name" { 
  default = "terraform-demo-07-March-22"
}

variable "sg_id" { 
  default = "sg-0a610d4295e4d2ca4"
}

variable "subnet_id" { 
  default = "subnet-0179b5ea05d1c08ff"
}

variable "ami" { 
  type = map
  default = { 
  "us-east-1" = "ami-0947d2ba12ee1ff75"
  "us-east-2" = "ami-0dd0ccab7e2801812"
  "us-west-1" = "ami-0e4035ae3f70c400f"
  "ap-south-1" = "ami-0e306788ff2473ccb"
  }
}

