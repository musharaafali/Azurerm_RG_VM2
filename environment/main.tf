module "RG-Madan" {
  source = "../module/Rg-group"
  RGS    = var.RGS
}

module "VNET" {
  depends_on = [module.RG-Madan]
  source     = "../module/Vnet"
  VNET       = var.VNET
}

module "SNET" {
  depends_on = [module.VNET]
  source     = "../module/Subnet"
  SNET       = var.SNET
}

module "PIP" {
  depends_on = [module.RG-Madan]
  source     = "../module/Pulic IP"
  PIP        = var.PIP
}


module "NIC" {
  depends_on = [module.PIP, module.SNET]
  source     = "../module/Virtual Machine"
  NIC        = var.NIC
}


