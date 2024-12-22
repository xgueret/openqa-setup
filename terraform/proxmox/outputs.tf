output "vm_ips_output" {
  description = "IPs of the created VMs"
  value       = [for i in range(var.vm_count) : proxmox_vm_qemu.vm[i].ipconfig0]
}