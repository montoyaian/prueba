resource "azurerm_resource_group" "rg" {
  name     = "rg_utbapp"
  location = "East US"
}

resource "azurerm_container_group" "container_group" {
  name                = "container_group_og_utbapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  ip_address_type     = "Public"
  dns_name_label      = "Ian-utbapp"

  container {
    name   = "utbapp"
    image  = "montoyita41/utbapp:${var.Imagebuild}"
    cpu    = 1
    memory = 1.5
  }
}