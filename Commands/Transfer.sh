#!/bin/bash
# Transfer.sh

MAIN_DIR="$1"

echo -e "\033[0;36m$(figlet -f smslant "DOTFILES TRANSFER")\033[0m"

if gum confirm "Do you want to transfer dotfiles from the MAIN directory and override existing files if needed?"; then

  if [ -d "$MAIN_DIR/.config" ]; then
    echo -e "\033[0;36mTransferring .config directory (overwriting existing files if needed)...\033[0m"
    cp -ru "$MAIN_DIR/.config/." ~/.config
  else
    echo -e "\033[0;31m.config directory not found in MAIN.\033[0m"
  fi

  if [ -f "$MAIN_DIR/.zshrc" ]; then
    echo -e "\033[0;36mTransferring .zshrc (overwriting existing file if needed)...\033[0m"
    cp -u "$MAIN_DIR/.zshrc" ~/.zshrc
  else
    echo -e "\033[0;31m.zshrc file not found in MAIN.\033[0m"
  fi

  if [ -f "$MAIN_DIR/.p10k.zsh" ]; then
    echo -e "\033[0;36mTransferring .p10k.zsh (overwriting existing file if needed)...\033[0m"
    cp -u "$MAIN_DIR/.p10k.zsh" ~/.p10k.zsh
  else
    echo -e "\033[0;31m.p10k.zsh file not found in MAIN.\033[0m"
  fi

  echo -e "\033[0;32mDotfiles transferred successfully!\033[0m"
else
  echo -e "\033[0;33mDotfiles transfer skipped!\033[0m"
  exit 0
fi
