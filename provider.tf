###################################
#### PROVIDER - Cloud provider ####
###################################

# IBM Cloud provider and credentials (defined using variables that will be set elsewhere)
provider "ibm" {
    softlayer_username = "${var.ibmcloud_iaaS_username}"   
    softlayer_api_key  = "${var.ibmcloud_iaaS_api_key}"
    bluemix_api_key    = "${var.ibmcloud_api_key}"
}
