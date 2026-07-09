resource "azurerm_network_interface" "ddnic" {
  name                = "ddnic"
  location            = "east us"
  resource_group_name = "ddrg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.ddsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}