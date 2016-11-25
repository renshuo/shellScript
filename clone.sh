#!/bin/sh
d=/mnt/gentoo/
cp -a /bin $d
cp -a /boot $d
cp -a /etc $d
cp -a /home $d
cp -a /lib* $d
cp -a /media $d
cp -a /root $d
cp -a /run $d
cp -a /sbin $d
cp -a /srv $d
cp -a /tmp $d
cp -a /usr $d
cp -a /var $d

mkdir $d/proc $d/sys $d/dev

mount -t proc none /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
chroot /mnt/gentoo


