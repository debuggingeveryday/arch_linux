#!/bin/sh

# install packages
sudo pacman -Sy \
 bspwm \
 sxhkd \
 xorg-xinit \
 xorg-server \
 xorg-xinit \
 dunst \
 ly \
 alacritty \
 neovim \
 picom \
 &&

# copy config
mkdir -p ~/.config/picom

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc && 
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc &&

cp /etc/X11/xinit/xinitrc ~/.xinitrc &&
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf

cp -f ./file_settings/sxhkdrc ~/.config/sxhkd/sxhkdrc
cp -f ./file_settings/bspwmrc ~/.config/bspwm/bspwmrc


# enable service
systemctl enable ly.service &&

# modify
echo "
bspwm &
sxhkd &
dusnt
" >> ~/.xinitrc