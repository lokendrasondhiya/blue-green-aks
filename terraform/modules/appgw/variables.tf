variable "resource_group_name" { type = string }
variable "location"            { type = string }
variable "prefix"              { type = string }
variable "appgw_subnet_id"     { type = string }
variable "blue_ingress_ip"     { type = string }
variable "green_ingress_ip"    { type = string }
variable "active_pool"         { type = string }
