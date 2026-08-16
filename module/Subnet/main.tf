resource "azurerm_subnet" "SNET" {
  for_each             = var.SNET
  name                 = each.value.Snet-name
  resource_group_name  = each.value.RG-name
  virtual_network_name = each.value.Vnet-name
  address_prefixes     = each.value.ADP
}