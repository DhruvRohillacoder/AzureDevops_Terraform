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