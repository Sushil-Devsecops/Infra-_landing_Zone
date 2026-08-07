module "resource_group" {
  source = "../Child/azurerm_resource_group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Child/azurerm_virtual_network"
  Dlink      = var.Dlink

}
module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../Child/azurerm_subnet"
  subnet     = var.subnet

}