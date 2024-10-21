#!/bin/bash
# Install.sh

# Directories
DOTFILES_DIR=$(pwd)
COMMANDS_DIR="$DOTFILES_DIR/Commands"
MAIN_DIR="$DOTFILES_DIR/Main"

# Function
run_script() {
  local Name=$1
  local Path="$COMMANDS_DIR/$Name"

  if [ -f "$Path" ]; then
    echo "Running" $Name
    bash "$Path" "$MAIN_DIR"
  else
    echo "FAILED TO RUN, NOT FOUND."
    exit 1
  fi

  sleep 1
  clear
}

# Sequence
run_script "Pacman.sh"
run_script "Paru.sh"
run_script "Essentials.sh"
run_script "Transfer.sh"
run_script "Zsh.sh"

echo -e "\033[0;32m$(figlet -f smslant "INSTALLATION COMPLETE")\033[0m"
