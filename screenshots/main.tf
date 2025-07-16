provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnet_ids[0]
}

module "alb" {
  source           = "./modules/alb"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.public_subnet_ids
  ec2_instance_id  = module.ec2.instance_id
}

module "rds" {
  source        = "./modules/rds"
  subnet_ids    = module.vpc.private_subnet_ids
  db_username   = "admin"
  db_password   = "Admin12345"
}
