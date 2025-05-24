module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
}

module "blue_cluster" {
  source              = "./modules/aks-cluster"
  resource_group_name = module.network.resource_group_name
  location            = var.location
  cluster_name        = "${var.prefix}-blue"
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.network.subnet_ids[0]
}

module "green_cluster" {
  source              = "./modules/aks-cluster"
  resource_group_name = module.network.resource_group_name
  location            = var.location
  cluster_name        = "${var.prefix}-green"
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.network.subnet_ids[1]
}

module "appgw" {
  source              = "./modules/appgw"
  resource_group_name = module.network.resource_group_name
  location            = var.location
  prefix              = var.prefix
  appgw_subnet_id     = module.network.subnet_ids[1]
  blue_ingress_ip     = var.blue_ingress_ip
  green_ingress_ip    = var.green_ingress_ip
  active_pool         = var.active_pool
}
