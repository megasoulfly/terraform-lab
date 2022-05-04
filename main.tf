##############################################################
#### RESOURCES - Declarations of new or changed resources ####
##############################################################

# Declare the specification of the VMs we want to provision
# Replace YOURINITIALS in the "hostname" below with your initials to ensure that your VM has a unique hostname
resource "ibm_compute_vm_instance" "csc_vm_1" {
    count                 = "1"          //  Number of VMs to be created with this specification

    datacenter            = "dal09"      //  Data centre in which we want to provision the VM
    domain                = "ibm.cloud"  //  Domain name for VM
    hostname              = "csc-vm-YOURINITIALS"  //  Replace YOURINITIALS with your initials

    os_reference_code     = "UBUNTU_18_64"   //  Ubuntu 18.04-64 Minimal for VSI
    cores                 = 1            //  Number of cores
    memory                = 1024         //  Amount of RAM (MB)
    disks                 = [25, 50]     //  Disk size(s)
    local_disk            = false        //  Use SAN rather than local disk

    network_speed         = 100          //  100 Mbps LAN
    private_network_only  = false        //  Both public and private network interfaces
    public_vlan_id        = "${data.ibm_network_vlan.csc_public_vlan_1.id}"   //  ID of existing VLAN
    private_vlan_id       = "${data.ibm_network_vlan.csc_private_vlan_1.id}"  //  ID of existing VLAN

    ssh_key_ids           = ["${ibm_compute_ssh_key.csc_lab_ssh_key.id}"]  //  ID of the ssh key we are creating

    hourly_billing        = true         //  Hourly billing rather than monthly
    tags                  = ["csc_vms"]

# Post provisioning action to copy a file to the target VM 
    provisioner "file" {
        source      = "script.sh"
        destination = "/tmp/script.sh"
        connection {
            type        = "ssh"
            user        = "root"
            private_key = "${file(var.private_key_file_name)}"
            timeout     = "1m"
        }
    }

# Post provisioning action to execute a remote command on the target VM 
    provisioner "remote-exec" {
        inline = [
            "chmod +x /tmp/script.sh",
            "/tmp/script.sh",
            "shutdown -r +1"
        ]
        connection {
            type        = "ssh"
            user        = "root"
            private_key = "${file(var.private_key_file_name)}"
            timeout     = "1m"
        }
    }

}
