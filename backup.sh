#!/bin/bash


if [ $# -ne 2 ]
then
   echo "Please enter 2 arguments"
   exit 1
fi


if ! command -v rsync > /dev/null 2>&1
then
    echo "Rsync not installed. Please install it."
    exit 2
fi


current_date=$(date +%Y-%m-%d)
rsync_options="-avb --backup-dir $2/$current_date --delete"
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
