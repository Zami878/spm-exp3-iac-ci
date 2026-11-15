module "network" {
  source = "./modules/network"

  name                = var.project
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  az                  = var.az
  admin_cidr          = var.admin_cidr
}

module "compute" {
  source = "./modules/compute"

  web_count         = var.web_count
  instance_type     = var.instance_type
  key_name          = var.key_name
  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  web_sg_id         = module.network.web_sg_id
  db_sg_id          = module.network.db_sg_id
}
