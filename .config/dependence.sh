#!/bin/bash
#
paru -Sy \
hyprland-git kitty rofi dunst waybar \
grimblast-git hypridle hyprlock hyprpaper hyprpicker \
gwenview dolphin ffmpegthumbs libnotify fastfetch \
ark 7-zip-full unrar unarchiver qt6ct \
pavucontrol xdg-desktop-portal xdg-desktop-portal-gtk \
xdg-desktop-portal-hyprland xdg-user-dirs \
bluez bluez-utils inetutils polkit-kde-agent 
# 以下是 自由安装软件
v2ray v2raya obs-studio openssh go rustup \
visual-studio-code-bin linuxqq wechat-universal-bwrap 

sleep 2

sudo sed -i 's/enabled=True/enabled=False/' /etc/xdg/user-dirs.conf
sleep 1
mkdir -p {Documents,Downloads,Media/Music,Media/Pictures,Share,Code,Media/Videos}
sleep 1
sudo systemctl enable --now bluetooth
sudo systemctl enable --now v2raya
