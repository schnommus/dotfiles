#!/bin/bash


INSTALL=sudo pacman --noconfirm -S

INSTALL openssh
systemctl enable sshd.socket
systemctl start sshd.socket

INSTALL git vim python2

# Display, window manager
INSTALL gdm nautilus
INSTALL xmonad xorg-xmessage dmenu feh xmonad-contrib
systemctl enable gdm

INSTALL cabal-install

cabal update
cabal install xmobar

# Terminal, fonts
INSTALL terminator
git clone https://github.com/powerline/fonts powerline_fonts
cd powerline_fonts && ./install.sh
cd ~ && rm -rf powerline_fonts

# Monadline
git clone https://bitbucket.org/schnommus/monadline .monadline
cd .monadline
cabal install ansi-terminal
cabal install split
cabal build
cd ~

xmonad --recompile

INSTALL xclip
INSTALL firefox
