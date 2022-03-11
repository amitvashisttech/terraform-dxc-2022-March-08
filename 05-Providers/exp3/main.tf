# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  #  subscription_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_secret = "xxxxxxxxxxxxxxxxxxxxxx"
  #  tenant_id = "xxxxxxxxxxxxxxxxxxxxxx"
}


# Create a resource group
resource "azurerm_resource_group" "example_rg_red" {
  name     = "example-resource-RG"
  location = "eastus"

 tags = { 
  owner = "Amit Vashist"
  team  = "DevOps"
  project = "Automation"
  }
}


provider "aws" {
 # access_key = "Access Key"
 # secret_key = "Secret Key"
 region = "us-east-2"
}



resource "aws_instance" "web" {
  ami           = "ami-08b6f2a5c291246a0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-Test-AV"
  }
}

