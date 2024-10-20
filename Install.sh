clear

DOTFILES_DIR=$(pwd)
COMMANDS_DIR="$DOTFILES_DIR/Commands"
MAIN_DIR="$DOTFILES_DIR/Main"

if [ -f "$COMMANDS_DIR/Pacman.sh" ]; then
  echo "Running pacman.sh..."
  bash "$COMMANDS_DIR/Pacman.sh"
else
  echo "Pacman.sh not found!"
  exit 1
fi

sleep 0.3
clear

if [ -f "$COMMANDS_DIR/Paru.sh" ]; then
  echo "Running paru.sh..."
  bash "$COMMANDS_DIR/Paru.sh"
else
  echo "Paru.sh not found!"
  exit 1
fi

sleep 0.3
clear

if [ -f "$COMMANDS_DIR/Essentials.sh" ]; then
  echo "Running Essentials.sh..."
  bash "$COMMANDS_DIR/Essentials.sh" "$MAIN_DIR"
else
  echo "Essentials.sh not found!"
  exit 1
fi

sleep 0.3
clear

if [ -f "$COMMANDS_DIR/Transfer.sh" ]; then
  echo "Running transfer.sh..."
  bash "$COMMANDS_DIR/Transfer.sh" "$MAIN_DIR"
else
  echo "Transfer.sh not found!"
  exit 1
fi

sleep 0.3
clear

echo "Installation complete!"
