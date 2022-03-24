
output "PublicIP_Frontend" { 
 #value = module.frontend.aws_instance.instance.*.public_ip 
 #value = frontend.aws_instance.instance.*.public_ip 
 value = module.frontend.PublicIP_East_Frontend 
}




output "PublicIP_Backend" { 
 #value = module.frontend.aws_instance.instance.*.public_ip 
 #value = frontend.aws_instance.instance.*.public_ip 
 value = module.backend.PublicIP_East_Frontend 
}
