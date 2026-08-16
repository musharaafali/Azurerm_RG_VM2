resource "azurerm_public_ip" "PIP" {
  for_each            = var.PIP
  name                = each.value.PIP-name
  resource_group_name = each.value.RG-name
  location            = each.value.PIP-location
  allocation_method   = each.value.ALM
}