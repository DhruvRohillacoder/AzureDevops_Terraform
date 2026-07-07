resource "azurerm_virtual_network" "ddvnet" {
  name                = "ddvnet"
  location            = "east us"
  resource_group_name = "ddrg"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}