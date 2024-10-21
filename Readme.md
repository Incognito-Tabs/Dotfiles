# TUI Files

This repository contains configuration files and scripts for setting up a window manager designed to create a text user interface (TUI) environment on Arch Linux. Follow the instructions below to install and configure everything.

## Installation Instructions

### 1. Install Git

If you haven't installed Git yet, you can do so by following these steps:

`sudo pacman -S git`

### 2. Clone the Repository

Once Git is installed, you can clone this repository using the following command:

`git clone git@github.com:Incognito-Tabs/Dotfiles.git`


### 3. Run the Installation Script

Navigate into the cloned directory and run the installation script:

`cd TUI-Files`  
`./install.sh`

## Additional Configurations

### Installing FirefoxCSS

To install FirefoxCSS, please follow this video tutorial.
[![FirefoxCSS Installation Guide](https://img.youtube.com/vi/mRhtjQz7gzc/0.jpg)](https://www.youtube.com/watch?v=mRhtjQz7gzc)

### Installing Vencord Theme

To install the Vencord theme in Discord:

1. **Install Vencord** by following the instructions on its official page.
2. **Go to Discord settings.**
3. **Find Vencord themes** in the settings.
4. **Press QuickCSS button** and replace its contents with the contents from `discord.css` found in the extra folder.

### Installing Spotify Theme using Spicetify

To install a Spotify theme using Spicetify:

1. **Install Spicetify and the Marketplace.**
2. **Go to the Marketplace** and install the TUI theme.
3. **In the Marketplace, click the settings icon.**
4. **Enable Theme Developer tools** and restart Spotify.
5. **Go back to the Marketplace;** you will see a brush button.
6. **Replace the contents of everything in `Color.ini`** with the specified theme settings found in the extra folder.

## Preview Images

Here are some preview images of the applications included in this setup:

### Firefox
![Firefox Preview](https://i.imgur.com/tpA1V6g.png)

### Discord
![Discord Preview](https://i.imgur.com/QYb7cnN.png)

### Spotify
![Spotify Preview](https://i.imgur.com/lhsJbRx.png)

### Desktop
![Desktop Preview](https://i.imgur.com/Sjow0qu.png)