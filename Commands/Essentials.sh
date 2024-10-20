if gum confirm "Do you want to install essential AUR packages using paru?"; then
  packages=(
    "git"
    "gum"
    "hyprland-git",
    "waybar-git",
    "hyprpaper",
    "waypaper",
    "xdg-desktop-portal-hyprland-git",
    "wlogout",
    "spotify-launcher",
    "rofi-wayland"
  )

  for pkg in "${packages[@]}"; do
    echo "Installing $pkg..."
    paru -S --noconfirm "$pkg"
  done

  echo "All essential AUR packages have been installed!"
else
  gum format --theme=warning "AUR packages installation skipped!"
  exit 0
fi