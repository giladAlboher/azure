provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "example" {
  name                = var.container_group_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"

  container {
    name   = var.container_name
    image  = var.container_image
    cpu    = var.container_cpu
    memory = var.container_memory

    ports {
      port     = var.container_port
      protocol = "TCP"
    }

    environment_variables = var.environment_variables
  }

  tags           = var.tags
  dns_name_label = var.dns_name_label
}

output "container_group_ip" {
  value      = azurerm_container_group.example.ip_address
  depends_on = [azurerm_container_group.example]
}
