#!/usr/bin/env bash
# export tmp_data_directory="/tmp"
# export data_directory="/data"


# export mount_tmp=$( mount  | awk '{print $3}' | grep ${tmp_data_directory} )
# export mount_data=$( mount  | awk '{print $3}' | grep ${data_directory} )
# if [[ "${mount_tmp}" == "${tmp_data_directory}" && "${mount_data}" == "${data_directory}" ]];then
  echo "hello world"
  set -ex
  cd /tmp/;
  aria2c -x8 -s8  -o /tmp/latest https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.17.2.tar.xz
  tar -xvf /tmp/latest -C /data/ --strip 1
# else
#   mount
#   echo "The directory is not mounted." && exit 1
# fi
