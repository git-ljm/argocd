#!/usr/bin/env bash
export tmp_data_directory="/tmp"
export data_directory="/data"

set -ex

cd /tmp/;
aria2c -x8 -s8  -o /tmp/latest https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.17.2.tar.xz
tar -xvf /tmp/latest -C /data/ --strip 1

