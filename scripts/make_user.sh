#!/bin/bash

# Must be run as root

INSTALL=sudo pacman --noconfirm -S

# virtualbox only 
echo "Skipping virtualbox guest utils..."
#INSTALL virtualbox-guest-utils

# Create a user
echo "Enter your username: "
read USERNAME
useradd -m -G wheel -s /bin/bash $USERNAME
passwd $USERNAME

# Make wheel group able to use sudo
sed -i "s/# \(%wheel ALL=(ALL) NOPASSWD: ALL\)/\1/g" /etc/sudoers

# Assume user's identity, move to home
su $USERNAME
cd ~
