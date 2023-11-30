#!/bin/sh

if [ "$1" == "-installable_disk_list" ]; then
    disks=$(ls /sys/block | grep '\(nvme*\|sata*\)' | xargs)
    echo " "$disks
elif [ "$1" == "-part_name_get" ]; then
    disk="${3}"
    partno="${2}"

    if [ "${disk#*"nvme"}" != "${disk}" ]; then
        echo "${disk}p${partno}"
    else
        synodiskportold "$@"
    fi
else
    synodiskportold "$@"
fi
