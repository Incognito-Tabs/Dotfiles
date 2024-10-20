if pacman -Q paru &>/dev/null; then
  echo "Paru is already installed."
  gum format --theme=warning "Paru installation skipped!"
  exit 0
fi

if [ -d "paru" ]; then
  rm -rf paru
fi
  
if gum confirm "Do you want to install paru?"; then
  git clone https://aur.archlinux.org/paru.git
  cd paru || exit
  makepkg -si
  cd ..
else
  gum format --theme=warning "Paru installation skipped!"
  exit 0
fi