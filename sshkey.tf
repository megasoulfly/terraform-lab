##############################################################
#### RESOURCES - Declarations of new or changed resources ####
##############################################################

# Define the new ssh key we wnat to create

# Lab Instructions:
# Replace YOURUSERNAME in the "label" below with your name to ensure that your key has a unique name

resource "ibm_compute_ssh_key" "csc_lab_ssh_key" {
    label = "csc_lab_ssh_key_YOURUSERNAME"   //  Replace YOURUSERNAME with your name to ensure that your key has a unique name
    notes = "SSH key to be used for CSC Infratrsucture as Code lab session"  //  A description that will be associated with this key
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC09MfWGX3O2y8LcMPd8Ql5Ap746VnyI0DzZKfqN/M9E4lmgRGxqj3NkOO2946zyaLJ02J0q6S3no5a7neC5DfBTDHnASE1pTmCtOP1iEzmT08SozHQJiRx/xHcHC8WlAh3rZeFIVjb0As4EbT/DyaSMdkHeKeCOXauVK1/QMFEuNIbk5Cag7H5tRXb+44nJ4cgYvO2dsmgsCnm1NJqu49t3Ci5AUt+aYDMxRrvM7+x55F8xE/Ajo5wCdlpROac6j2gsc2x+R9uS40TcgFZE2dQKnHP6VbQhilRmrbI3ao6bqBfclZSoEq9U5jXPzhlCqsETOdtvucHeWnX5TMQ+D27 root@ubuntu1"
}