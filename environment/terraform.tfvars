RGS = {
  RGS1 = {
    RG-name     = "Mohan"
    RG-location = "West US2"
  }
  RGS2 = {
    RG-name     = "Mohan3"
    RG-location = "West US2"
  }
}


VNET = {
  VNET1 = {
    Vnet-name     = "Vnet-Mohan"
    Vnet-location = "West US2"
    Rg-name       = "Mohan"
    ADS           = ["10.1.0.0/16"]
  }
}

SNET = {
  SNET1 = {
    Snet-name = "Front-subnet"
    RG-name   = "Mohan"
    Vnet-name = "Vnet-Mohan"
    ADP       = ["10.1.1.0/24"]
  }

  SNET2 = {
    Snet-name = "Backend-subnet"
    RG-name   = "Mohan"
    Vnet-name = "Vnet-Mohan"
    ADP       = ["10.1.2.0/24"]
  }
}

PIP = {
  PIP1 = {
    PIP-name     = "Front-PIP"
    RG-name      = "Mohan"
    PIP-location = "West US2"
    ALM          = "Static"
  }

  PIP2 = {
    PIP-name     = "Backend-PIP"
    RG-name      = "Mohan"
    PIP-location = "West US2"
    ALM          = "Static"
  }

}

NIC = {
  NIC1 = {
    NIC-name     = "Front-Nic"
    NIC-location = "West US2"
    RG-name      = "Mohan"

    Snet-name = "Front-subnet"
    Vnet-name = "Vnet-Mohan"
    PIP-name  = "Front-PIP"

    VM-name     = "Front-VM"
    VM-location = "West US2"
    VM-size     = "Standard_D2s_v3"
    username    = "Adminuser"
    password    = "Adminuser@123"

    os-caching  = "ReadWrite"
    STG-account = "Standard_LRS"

    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  NIC2 = {
    NIC-name     = "Backend-Nic"
    NIC-location = "West US2"
    RG-name      = "Mohan"

    Snet-name = "Backend-subnet"
    Vnet-name = "Vnet-Mohan"
    PIP-name  = "Backend-PIP"

    VM-name     = "Backend-VM"
    VM-location = "West US2"
    VM-size     = "Standard_D2s_v3"
    username    = "Adminuser"
    password    = "Adminuser@123"

    os-caching  = "ReadWrite"
    STG-account = "Standard_LRS"

    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}


