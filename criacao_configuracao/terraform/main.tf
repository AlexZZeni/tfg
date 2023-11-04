provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url      = yamldecode(data.local_file.secrets.content).pm_api_url
  pm_user         = yamldecode(data.local_file.secrets.content).pm_user
  pm_password     = yamldecode(data.local_file.secrets.content).pm_password
  pm_parallel     = 1
  pm_debug        = true
  pm_log_enable   = true
  pm_log_file     = "terraform-plugin-proxmox.log"
  pm_log_levels = {
    _default    = "debug"
    _capturelog = ""
  }
}

provider "aws" {
    region = yamldecode(data.local_file.secrets.content).region
    access_key = yamldecode(data.local_file.secrets.content).access_key
    secret_key = yamldecode(data.local_file.secrets.content).secret_key
}