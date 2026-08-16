resource "azurerm_virtual_network" "VNET" {
  for_each            = var.VNET
  name                = each.value.Vnet-name
  location            = each.value.Vnet-location
  resource_group_name = each.value.Rg-name
  address_space       = each.value.ADS
}