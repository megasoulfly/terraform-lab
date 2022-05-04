####################################################
##  Data source containing Cloudinit definitions  ##
####################################################
data "template_cloudinit_config" "vsi_userdata" {
  base64_encode = false
  gzip          = false

  part {
    content = <<EOF
#cloud-config
package_upgrade: true
packages:
- mc
- htop
- python
runcmd:
- mkdir /mnt/newvar
- mkfs.ext4 /dev/xvdc
mounts:
- [ /dev/xvdc, /mnt/newvar, "ext4", "defaults,noexec,nofail", "0", "2" ]
final_message: "The system is finally up, after $UPTIME seconds"
power_state:
  delay: now
  mode: reboot
EOF
  }
}

