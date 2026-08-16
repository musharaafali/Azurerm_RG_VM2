data "azurerm_subnet" "SNET" {
  for_each             = var.NIC
  name                 = each.value.Snet-name
  resource_group_name  = each.value.RG-name
  virtual_network_name = each.value.Vnet-name
}

data "azurerm_public_ip" "PIP" {
  for_each            = var.NIC
  name                = each.value.PIP-name
  resource_group_name = each.value.RG-name
}