#####################################################
#### DATA SOURCES - Data from existing resources ####
#####################################################

# Retrieve details of existing private and public VLANs to which we will attach the VM

data "ibm_network_vlan" "csc_private_vlan_1" {
    name                  = "testprvvlan01"  //  ID of existing VLAN
}

data "ibm_network_vlan" "csc_public_vlan_1" {
    name                  = "testpubvlan01"  //  ID of existing VLAN
}

