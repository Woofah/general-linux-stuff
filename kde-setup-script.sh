#!/bin/bash
set -e

yay -S nvidia nvidia-settings lib32-nvidia-utils steam steamcmd discord telegram-desktop powerdevil ark p7zip unrar obs-studio vlc qbitrorrent libreoffice-fresh bleachbit thunderbird wine-staging neofetch kdenlive foxitreader visual-studio-code-insiders retroarch-git retroarch-assets-xmb-git simplenote-electron-bin spotify minecraft-launcher teamviewer timeshift gamemode woeusb xdman unityhub pcsx2-git gitkraken dotnet-runtime-bin dotnet-host-bin dotnet-sdk-bin 
sudo pacman -Rns $(pacman -Qtdq)
sudo pacman -Scc
yay -Scc
