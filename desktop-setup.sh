#!/bin/sh

# install packages
sudo pacman -Sy bspwm sxhkd xorg-xinit xorg-server xorg-xinit dunst ly alacritty dmenu neovim &&

# copy config
install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc && 
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc &&
cp /etc/X11/xinit/xinitrc ~/.xinitrc &&

# enable service
systemctl enable ly.service &&

# modify

echo "
bspwm &
sxhkd &
dusnt
" >> ~/.xinitrc
