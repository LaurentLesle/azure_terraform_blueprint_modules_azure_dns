resource "azurerm_dns_zone" "dns" {
  count                             = "${length(keys(var.dns_zone))}"
  
  name                              = "${var.subdomain}${var.dns_zone["name"]}"
  resource_group_name               = "${var.resource_group_name}"
  zone_type                         = "${var.dns_zone["zone_type"]}"

  resolution_virtual_network_ids    = ["${var.resolution_virtual_network_ids}"]
  registration_virtual_network_ids  = ["${var.registration_virtual_network_ids}"]
}