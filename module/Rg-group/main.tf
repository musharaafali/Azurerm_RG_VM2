resource "azurerm_resource_group" "RG-Madan" {
  for_each = var.RGS
  name     = each.value.RG-name
  location = each.value.RG-location
}