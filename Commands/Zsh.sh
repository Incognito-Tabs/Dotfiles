#!/bin/bash
# Zsh.sh

MAIN_DIR="$1"

echo -e "\033[0;36m$(figlet -f smslant "ZSH INSTALLER")\033[0m"

if gum confirm "Do you want to install Zsh and Oh My Zsh?"; then

  if ! command -v zsh &> /dev/null; then
    echo -e "\033[0;36mZsh not found. Installing Zsh...\033[0m"
    sudo pacman -S --noconfirm zsh
    echo -e "\033[0;32mZsh installed!\033[0m"
  else
    echo -e "\033[0;32mZsh is already installed.\033[0m"
  fi

  if [ -d "$HOME/.oh-my-zsh" ]; then
    echo -e "\033[0;32mOh My Zsh is already installed.\033[0m"
  else
    echo -e "\033[0;36mInstalling Oh My Zsh...\033[0m"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    chsh -s $(which zsh)
    echo -e "\033[0;32mOh My Zsh installed!\033[0m"
  fi

  if gum confirm "Do you want to transfer .zshrc and .p10k.zsh from the MAIN directory and override existing files if needed?"; then
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

    echo -e "\033[0;32mZsh-related dotfiles transferred!\033[0m"
  else
    echo -e "\033[0;33mSkipping transfer of Zsh dotfiles.\033[0m"
  fi

else
  echo -e "\033[0;33mZsh and Oh My Zsh installation skipped!\033[0m"
  exit 0
fi