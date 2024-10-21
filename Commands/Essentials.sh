#!/bin/bash
# Essentials.sh

echo -e "\033[0;36m$(figlet -f smslant "AUR INSTALLER")\033[0m"

if gum confirm "Do you want to install essential AUR packages using paru?"; then
  packages=(
    "git"
    "gum"
    "hyprpaper"
    "waypaper"
    "xdg-desktop-portal-hyprland"
    "dunst"
    "hyprland"
    "waybar"
    "wlogout"
    "firefox"
    "alacritty"
    "spotify-launcher"
    "rofi-wayland"
    "neofetch"
    "spicetify-cli"
    "flameshot"
    "nm-connection-editor"
    "ttf-font-logos"
  )

  echo -e "\033[0;36mInstalling essential AUR packages...\033[0m"
  
  for pkg in "${packages[@]}"; do
    echo -e "\033[0;36mInstalling \033[0;33m$pkg\033[0;36m...\033[0m"
    paru -S --noconfirm "$pkg"
  done

  echo -e "\033[0;32mAll essential AUR packages have been installed!\033[0m"
else
  echo -e "\033[0;33mAUR packages installation skipped!\033[0m"
  exit 0
fi
