##########################################################################
#### OUTPUTS - Output variables related to resources just provisioned ####
##########################################################################

# Attributes of the VM instance (subset of all the attributes available)

output "vm_id" {
  description = "The unique identifier of the VM instance"
  value = "${ibm_compute_vm_instance.csc_vm_1.id}"
}
output "vm_ipv4_address" {
  description = "The public IPv4 address of the VM instance"
  value = "${ibm_compute_vm_instance.csc_vm_1.ipv4_address}"
}
output "vm_ipv4_address_private" {
  description = "The private IPv4 address of the VM instance"
  value = "${ibm_compute_vm_instance.csc_vm_1.ipv4_address_private}"  
}
