####################################################################
####  VARIABLES - Define the variables we will use in this plan ####
####################################################################

#### IBM Cloud Access Credentials #####
# Note:  The values of these variables should be set either by exporting environment variables
#        or by setting the variables in a separate .tfvars file
#        These credentials MUST NOT be published on GitHub or any other public repository
variable "ibmcloud_iaaS_username" { 
    description = "IBM Cloud Classic Infrastructure / SoftLayer user name"
    default = "" 
}
variable "ibmcloud_iaaS_api_key" {
    description = "IBM Cloud Classic Infrastructure / SoftLayer API key"
    default = "" 
}
variable "ibmcloud_api_key" {
    description = "IBM Cloud Platform / Bluemix API key"
    default = "" 
}

##### SSH key details ######
variable "private_key_file_name" {
  description = "Local file name of the SSH private key corresponding to our public key"
  default = "terratest_ssh_key"
}
