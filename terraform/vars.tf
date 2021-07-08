variable "vm_size" {
  type = string
  description = "Tamaño Workers y NFS"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

variable "vm_size2" {
  type = string
  description = "Tamaño del Master"
  default = "Standard_D2_v2" # 7 GB, 2 CPU
}
