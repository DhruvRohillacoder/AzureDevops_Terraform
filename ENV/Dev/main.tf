module "RG" {
  source = "../../Module/azurerm_resource_group"
}

module "vnet" {
  depends_on = [module.RG]
  source     = "../../Module/azurerm_vnet"
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../Module/azurerm_subnet"
}

module "nic" {
  depends_on = [module.subnet]
  source     = "../../Module/azurerm_network_interface"
}