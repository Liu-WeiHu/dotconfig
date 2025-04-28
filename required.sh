#!/bin/bash

paru -S go rustup
rustup default stable

paru -S xdg-desktop-portal-gtk less btop fcitx5-breeze pot-translation yazi ffmpegthumbnailer zoxide chafa xdg-user-dirs xorg-xrdb atuin nvtop wl-screenrec mpv libreoffice-still libreoffice-still-zh-cn code satty npm lazygit fzf ripgrep fd hyprpolkitagent unzip podman podman-compose nwg-displays thunar mousepad moreutils

mkdir -p {~/.cache/com.pot-app.desktop,~/Code,~/Works,~/Shared,~/Media/Music,~/Media/Pictures/Screenshots,~/Media/Videos/recording}

paru -Rsn pinta htop pacseek loupe imv nautilus-open-any-terminal nautilus-python nautilus libnautilus-extension gnome-calculator gnome-text-editor
