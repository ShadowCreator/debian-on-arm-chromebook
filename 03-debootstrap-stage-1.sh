#!/bin/bash

# On a Linux workstation

DEV=/dev/mmcblk0p
MNT=/mnt

set -x

# mount ROOT (/), and debootstrap into it
mount ${DEV}4 ${MNT}

debootstrap --arch=armhf --foreign sid ${MNT} ftp://ftp.au.debian.org/debian/

umount ${MNT}

exit 0

