resource "proxmox_vm_qemu" "dev_resources" {
  for_each = var.dev_resources

  name         = each.key
  target_node  = each.value.target_node
  agent        = 1
  vmid         = each.value.id
  memory       = each.value.memory
  cores        = each.value.cores
  sockets      = each.value.sockets
  numa         = each.value.numa
  bootdisk     = "scsi0"
  scsihw       = "virtio-scsi-pci"
  os_type      = var.common.os_type
  ipconfig0    = "ip=${each.value.cidr},gw=${each.value.gw}"
  ciuser       = each.value.username
  cipassword   = yamldecode(data.local_file.secrets.content).user_password
  searchdomain = var.common.search_domain
  nameserver   = var.common.nameserver
  clone = join("", [
    each.value.target_node,
    "-",
    var.common.clone
  ])
  sshkeys = join("", [
    data.local_file.master_key_pub.content,
    yamldecode(data.local_file.secrets.content).ssh_authorized_keys
  ])

  vga {
    type = "qxl"
  }

  network {
    model    = "virtio"
    macaddr  = each.value.macaddr
    bridge   = "vmbr0"
    firewall = true
    tag      = each.value.tag
  }

  disk {
    type    = "scsi"
    storage = each.value.storage
    size    = each.value.disk
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
