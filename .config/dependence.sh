#!/bin/bash
#
paru -Sy \
hyprland-git kitty rofi dunst waybar wl-clipboard \
grimblast-git hypridle hyprlock hyprpaper hyprpicker \
gwenview dolphin ffmpegthumbs libnotify fastfetch \
ark 7-zip-full unrar unarchiver qt6ct \
pavucontrol xdg-desktop-portal polkit-gnome \
xdg-desktop-portal-hyprland xdg-user-dirs \
bluez bluez-utils inetutils google-chrome \
xray v2raya obs-studio openssh go rustup \
visual-studio-code-bin linuxqq wechat-universal-bwrap 

sleep 2

sudo sed -i 's/enabled=True/enabled=False/' /etc/xdg/user-dirs.conf
sleep 1
mkdir -p ~/{Documents,Downloads,Media/Music,Media/Pictures,Share,Code,Media/Videos,Media/Pictures/screenshots}
sleep 1
sudo systemctl enable --now bluetooth
sudo systemctl enable --now v2raya
