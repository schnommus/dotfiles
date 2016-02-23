#!/bin/bash
sudo ip link set enp0s20u4u1u3 up
sudo systemctl start dhcpcd@enp0s20u4u1u3
