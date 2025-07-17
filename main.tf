module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "ec2" {
  source     = "./modules/ec2"
  region     = var.region
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
}

module "rds" {
  source         = "./modules/rds"
  region         = var.region
  db_name        = var.db_name
  db_username    = var.db_username
  db_password    = var.db_password
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnet_ids
}
