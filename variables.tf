variable "environment"{  #String Type Constraint
    type = string
    description ="devlopment environment"
    default = "dev Environment"
}

variable "deleteOsDisk" {   #Boolean Type Constraint
    type=bool
    description="Delete OS Disk when VM is deleted"
    default=true
}

variable "prefix" {  #String Type Constraint for naming resources
    type = string
    default = "Dev"
  
}

variable "storage_disk" {  #Number Type Constraint for storage disk size
    type = number
    description = "Size of the storage disk in GB"
    default = 30
  
}

variable "allowedLocations" {  #List 0f String Type Constraint for allowed Azure locations
    type = list(string)
    description = "The list of allowed Azure locations."
    default = ["centralindia","southindia"]
  
}


variable "resource_tags" {  #Map of String Type Constraint for resource tags
    type = map(string)
    description = "tags to apply to the resources"
    default = {
      "environment" = "staging"
      "managed_by" = "terraform"
      "department" = "devops"
    }
  
}

variable "network_config" {  #Tuple Type Constraint for network configuration
  type        = tuple([string, string, number])
  description = "Network configuration (VNET address, subnet address, subnet mask)"
  default     = ["10.0.0.0/16", "10.0.2.0", 24]
}

variable "vm_config" {
  type = object({
    size         = string
    publisher    = string
    offer        = string
    sku          = string
    version      = string
  })
  description = "Virtual machine configuration"
  default = {
    size         = "Standard_DS1_v2"
    publisher    = "Canonical"
    offer        = "0001-com-ubuntu-server-jammy"
    sku          = "22_04-lts"
    version      = "latest"
  }
}

