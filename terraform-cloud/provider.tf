terraform {
  cloud { 
    
    organization = "raoshahzaib-home-lab" 

    workspaces { 
      name = "github-action" 
    } 
  } 

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "=3.0.1-rc6"
    }
  }
}

provider "proxmox" {
  pm_api_url   = "https://proxmox.raoshahzaib.site/api2/json"
  pm_tls_insecure = true
  pm_user    = "root@pam"
  pm_password = "admin"
  pm_debug = true
  #pm_log_enable = "true"
}