#!/bin/sh
d=/mnt/
cp -a /bin $d
# cp -a /boot $d
cp -a /etc $d
#cp -a /home $d
cp -a /lib* $d
#cp -a /media $d
cp -a /root $d
#cp -a /run $d
cp -a /sbin $d
#cp -a /srv $d
#cp -a /tmp $d
cp -a /opt $d
cp -a /usr $d
cp -a /var $d

mkdir $d/proc $d/sys $d/dev

mount -t proc none /mnt/proc
mount --rbind /sys /mnt/sys
mount --rbind /dev /mnt/dev
chroot /mnt

# install grub
## make gpt boot on

# parted /dev/sdz set 1 bios_grub on

# install grub
# grub-install --target=i386-pc /dev/sdz

