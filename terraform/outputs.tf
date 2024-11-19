output "master_ips" {
  description = "IPs das VMs mestres"
  value = virtualbox_vm.master.*.network_adapter.0.ipv4_address
}

output "workers_ips" {
  description = "IPs das VMs trabalhadores"
  value = virtualbox_vm.worker.*.network_adapter.0.ipv4_address
}