
resource "azurerm_resource_group" "rgblock" {
  for_each = var.rg

  name     = each.value.rg-name
  location = each.value.location

  tags = {
    Environment = "dev"
  }
}