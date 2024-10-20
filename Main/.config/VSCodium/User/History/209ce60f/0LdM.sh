sleep 1
clear
aur_helper="$(cat ~/.config/ml4w/settings/aur.sh)"
figlet -f smslant "Updates"
echo
_isInstalledAUR() {
    package="$1";
    check="$($aur_helper -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

if gum confirm "DO YOU WANT TO START THE UPDATE NOW?" ;then
    echo 
    echo ":: Update started."
elif [ $? -eq 130 ]; then
        exit 130
else
    echo
    echo ":: Update canceled."
    exit;
fi

$aur_helper

if [[ $(_isInstalledAUR "flatpak") == "0" ]] ;then
    flatpak upgrade
fi

notify-send "Update complete"
echo 
echo ":: Update complete"
echo 
echo 

echo "Press [ENTER] to close."
read