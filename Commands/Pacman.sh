#!/bin/bash
# Pacman.sh

if ! pacman -Q gum &>/dev/null || ! pacman -Q git &>/dev/null; then
  echo -e "\033[0;36mInstalling pacman requirements.\033[0m"
  
  sudo pacman -S --noconfirm gum git
  
  echo -e "\033[0;32mInstalled pacman requirements.\033[0m"
else
  echo -e "\033[0;33mGit requirements already installed.\033[0m"
fi
