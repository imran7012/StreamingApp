provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  az                  = "ap-south-1a"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
  my_ip  = var.my_ip
}

module "iam" {
  source = "./modules/iam"
}

module "ec2" {
  source = "./modules/ec2"

  ami              = var.ami
  public_subnet    = module.vpc.public_subnet_id
  private_subnet   = module.vpc.private_subnet_id
  web_sg           = module.security.web_sg_id
  db_sg            = module.security.db_sg_id
  key_name         = var.key_name
  instance_profile = module.iam.profile_name
}
