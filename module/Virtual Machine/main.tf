resource "azurerm_network_interface" "NIC" {
  for_each            = var.NIC
  name                = each.value.NIC-name
  location            = each.value.NIC-location
  resource_group_name = each.value.RG-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.SNET[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.PIP[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "VM-machine" {
  for_each                        = var.NIC
  name                            = each.value.VM-name
  location                        = each.value.VM-location
  resource_group_name             = each.value.RG-name
  size                            = each.value.VM-size
  admin_username                  = each.value.username
  admin_password                  = each.value.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.NIC[each.key].id]

  os_disk {
    caching              = each.value.os-caching
    storage_account_type = each.value.STG-account
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}