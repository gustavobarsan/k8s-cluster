variable "vm_memory" {
  description = "Quantidade de memoria RAM por VM"
  type = number
  default = 2048
}

variable "vm_cpus" {
  description = "Quantidade de CPUs por VM"
  type = number
  default = 2
}

variable "masters_count" {
  description = "Numero de nos masters"
  type = number
  default = 3
}

variable "workers_count" {
  description = "Numero de workers"
  type = number
  default = 2
}