#!/bin/bash
set -e

#Completely shit on the cpu
wget https://raw.githubusercontent.com/WoofahRayetCode/arch-linux-stuff/master/all-cpu-cores-compiling.sh
chmod +x all-cpu-cores-compiling.sh
./all-cpu-cores-compiling.sh

#Command for downloading and setting up Proton Updater for steam
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
chmod +x cproton.sh

#Main programs I use
sudo pacman -S nvidia qt gamemode lib32-gamemode steam wine-staging winetricks lutris qbittorrent discord krita libreoffice-fresh vlc bleachbit spectacle

#Remove unwanted programs
sudo pacman -Rns konsole

#AUR Programs I use
yay -S duckstation-git pcsx2-git rpcs3-git ppsspp-git mgba-qt-git desmume-git citra-git mullvad-vpn protontricks minecraft-launcher steamcmd foxitreader mellowplayer signal-desktop-beta-bin bitwarden-bin vscodium-bin vscodium-bin-marketplace github-desktop-bin etcher-bin minetime-bin standardnotes-bin 

#Remove icons cuz OCD :s
cd /usr/share/applications
sudo rm -f assistant.desktop 
sudo rm -f designer.desktop
sudo rm -f linguist.desktop
sudo rm -f qdbusviewer.desktop
sudo rm -f uxterm.desktop
sudo rm -f xterm.desktop
sudo rm -f UserFeedbackConsole.desktop
cd

#To make sure program can use the Nvidia GPU
nvidia-modprobe

#Restart
sudo restart
