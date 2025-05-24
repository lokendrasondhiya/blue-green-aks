variable "resource_group_name" { type = string }
variable "location"            { type = string }
variable "prefix"              { type = string }
variable "address_space"       { type = string }
variable "subnet_prefixes"     { type = list(string) }
