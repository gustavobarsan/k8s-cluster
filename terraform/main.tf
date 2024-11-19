resource "virtualbox_vm" "master" {
  count = var.masters_count
  name  = "master-${count.index + 1}"
  image = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus  = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type = "bridged"
  }

  # Adicionando a chave SSH via user_data
  user_data = <<-EOF
              #cloud-config
              ssh_authorized_keys:
                - ${file("ssh/id_rsa_terraform.pub")}
              EOF
}

resource "virtualbox_vm" "worker" {
  count = var.workers_count
  name  = "worker-${count.index + 1}"
  image = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus  = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type = "bridged"
  }

  # Adicionando a chave SSH via user_data
  user_data = <<-EOF
              #cloud-config
              ssh_authorized_keys:
                - ${file("ssh/id_rsa_terraform.pub")}
              EOF
}
