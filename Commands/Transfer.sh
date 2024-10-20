MAIN_DIR="$1"

if gum confirm "Do you want to transfer dotfiles from the MAIN directory and override existing files if needed?"; then

  if [ -d "$MAIN_DIR/.config" ]; then
    echo "Transferring .config (overwriting existing files if they exist)..."
    cp -ru "$MAIN_DIR/.config/." ~/.config
  else
    echo ".config directory not found in MAIN."
  fi

  if [ -f "$MAIN_DIR/.zshrc" ]; then
    echo "Transferring .zshrc (overwriting existing file if it exists)..."
    cp -u "$MAIN_DIR/.zshrc" ~/.zshrc
  else
    echo ".zshrc file not found in MAIN."
  fi

  if [ -f "$MAIN_DIR/.p10k.zsh" ]; then
    echo "Transferring .p10k.zsh (overwriting existing file if it exists)..."
    cp -u "$MAIN_DIR/.p10k.zsh" ~/.p10k.zsh
  else
    echo ".p10k.zsh file not found in MAIN."
  fi

  echo "Dotfiles transferred successfully!"

else
  gum format --theme=warning "Dotfiles transfer skipped!"
  exit 0
fi
