#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Must be root!" 1>&2
    exit 1
fi

ip link set wlp4s0 down
netctl start uniwide
