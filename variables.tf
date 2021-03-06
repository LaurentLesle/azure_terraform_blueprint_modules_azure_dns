variable "resource_group_name" {
}

variable "dns_zone" {
  description = "(Optional) Map of the DNS zone to create"
  type        = map(string)
  default     = {}
}

variable "subdomain" {
  description = "(Optional) Sub-domain to add in the form of 'subname.'"
  default     = ""
}

variable "resolution_virtual_network_ids" {
  description = "(Optional) A list of Virtual Network ID's that resolve records in this DNS zone. This field can only be set when zone_type is set to Private."
  type        = list(string)
  default     = []
}

variable "registration_virtual_network_ids" {
  description = " (Optional) A list of Virtual Network ID's that register hostnames in this DNS zone. This field can only be set when zone_type is set to Private."
  type        = list(string)
  default     = []
}

