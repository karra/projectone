variable "rg" {
  type    = string
  default = "project1-rg"
}

variable "location" {
  type    = string
  default = "westus3"
}

variable "vnet" {
  type = map(string)
  default = {
    "name"          = "project1-vnet"
    "address_space" = "10.0.0.0/16"
  }
}

variable "subnet" {
  type = map(string)
  default = {
    "name"          = "subnet1"
    "address_range" = "10.0.0.0/24"
  }
}

variable "allocation_method" {
  type    = list(string)
  default = ["Static", "Dynamic"]
}

variable "vm_prefix" {
  type = map(string)
  default = {
    "master" = "jenkins-master"
    "slave"  = "jenkins-slave"
  }
}

variable "vm_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "os_disk_caching" {
  type    = string
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "os_disk_size" {
  default = 30
}

variable "publisher" {
  type    = string
  default = "Canonical"
}

variable "offer" {
  type    = string
  default = "UbuntuServer"
}

variable "sku" {
  type    = string
  default = "18.04-LTS"
}

variable "username" {
  type    = string
  default = "skarra"
}

variable "password" {
  type    = string
  default = "Zxvf@12345ivh"
}