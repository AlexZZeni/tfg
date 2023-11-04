resource "proxmox_vm_qemu" "dev_resources" {
  name         = "Dev1-Ubuntu-Server"
  target_node  = "hera"
  agent        = 1
  vmid         = 101
  memory       = 12288
  cores        = 3
  sockets      = 2
  numa         = true
  bootdisk     = "scsi0"
  scsihw       = "virtio-scsi-pci"
  os_type      = "cloud-init"
  ipconfig0    = "ip=192.168.203.91/24,gw=192.168.203.59"
  ciuser       = "dev1"
  cipassword   = yamldecode(data.local_file.secrets.content).user_password
  searchdomain = var.common.search_domain
  nameserver   = var.common.nameserver
  clone = "hera-ubuntu-22-template"
  sshkeys = join("", [
    data.local_file.master_key_pub.content,
    yamldecode(data.local_file.secrets.content).ssh_authorized_keys
  ])

  vga {
    type = "qxl"
  }

  network {
    model    = "virtio"
    macaddr  = ""
    bridge   = "vmbr0"
    firewall = true
    tag      = 203
  }

  disk {
    type    = "scsi"
    storage = "StorageNVME1"
    size    = "75G"
    format  = "qcow2"
  }

  serial {
    id   = 0
    type = "socket"
  }

  timeouts {
    create = "120s"
  }
}
