variable "common" {
  type = map(string)
  default = {
    os_type           = "cloud-init"
    clone             = "ubuntu-22-template"
    search_domain     = "moinhosul.net"
    nameserver        = "192.168.202.4 192.168.202.5"
    nameserver_public = "1.1.1.1 1.0.0.1 8.8.8.8 8.8.4.4"
  }
}


variable "dev_resources" {
  type = map(map(string))
  default = {
    # Dev1-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev1"
    #   id          = 101
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME1"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.91/24"
    #   tag         = 203
    # },
    # Dev2-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev2"
    #   id          = 102
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME2"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.92/24"
    #   tag         = 203
    # },
    # Dev3-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev3"
    #   id          = 103
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME1"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.93/24"
    #   tag         = 203
    # },
    # Dev4-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev4"
    #   id          = 104
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME2"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.94/24"
    #   tag         = 203
    # },
    # Dev5-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev5"
    #   id          = 105
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME1"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.95/24"
    #   tag         = 203
    # },
    # Dev6-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev6"
    #   id          = 106
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME2"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.96/24"
    #   tag         = 203
    # },
    # Dev7-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev7"
    #   id          = 107
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME1"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.97/24"
    #   tag         = 203
    # },
    # Dev8-Ubuntu-Server = {
    #   target_node = "hera"
    #   username    = "dev8"
    #   id          = 108
    #   sockets     = 2
    #   cores       = 3
    #   numa        = true
    #   memory      = 12288
    #   disk        = "75G"
    #   storage     = "StorageNVME2"
    #   gw          = "192.168.203.59"
    #   macaddr     = ""
    #   cidr        = "192.168.203.98/24"
    #   tag         = 203
    # },
    Dev9-Ubuntu-Server = {
      target_node = "hera"
      username    = "dev9"
      id          = 109
      sockets     = 2
      cores       = 3
      numa        = true
      memory      = 12288
      disk        = "75G"
      storage     = "StorageNVME1"
      gw          = "192.168.203.59"
      macaddr     = ""
      cidr        = "192.168.203.40/24"
      tag         = 203
    }
  }
}
