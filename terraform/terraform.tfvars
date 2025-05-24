resource_group_name = "bgdemo-rg"
location            = "eastus"
prefix              = "bgdemo"
address_space       = "10.1.0.0/16"
subnet_prefixes     = ["10.1.1.0/24", "10.1.2.0/24"]
node_count          = 2
vm_size             = "Standard_DS2_v2"
# After clusters are up, fill these with AKS ingress IPs
blue_ingress_ip     = "<BLUE_INGRESS_IP>"
green_ingress_ip    = "<GREEN_INGRESS_IP>"
active_pool         = "blue"
