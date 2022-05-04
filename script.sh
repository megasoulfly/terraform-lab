


echo Hi > ~/testfile
cat /etc/fstab >> ~/testfile

echo  "++++++++++++++++++++++++++++" >> ~/testfile
fdisk -l /dev/xvdc

mkfs.ext4 /dev/xvdc

mkdir /mnt/newvar

mount /dev/xvdc /mnt/newvar

df -h /mnt/newvar
rsync -aqxP /var/* /mnt/newvar
umount /mnt/newvar

blkid | grep xvdc >> ~/testfile

blkid | grep xvdc | awk '{print $2"  /var ext4 defaults 0 2"}'

cp /etc/fstab /etc/fstab.bk

blkid | grep xvdc | awk '{print $2"  /var ext4 defaults 0 2"}' >> /etc/fstab

cat /etc/fstab >> ~/testfile


echo  "++++++++++++++++++++++++++++" >> ~/testfile


