output "vm_ipv4" {
  value = proxmox_vm_qemu.sambavmtest[0].default_ipv4_address
}
