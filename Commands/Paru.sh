#!/bin/bash
# Paru.sh

MAIN_DIR="$1"

if pacman -Q paru &>/dev/null; then
  echo -e "\033[0;32mParu is already installed.\033[0m"
else
  echo -e "\033[0;36m$(figlet -f smslant "PARU INSTALLER")\033[0m"

  if gum confirm "Do you want to install paru?"; then
    if [ -d "paru" ]; then
      rm -rf paru
    fi

    echo -e "\033[0;36mCloning paru repository...\033[0m"
    git clone https://aur.archlinux.org/paru.git

    cd paru || exit
    echo -e "\033[0;36mBuilding paru...\033[0m"
    makepkg -si

    cd ..
    rm -rf paru

    echo -e "\033[0;32mParu installed successfully!\033[0m"
  else
    echo -e "\033[0;33mParu installation skipped!\033[0m"
    exit 0
  fi
fi
