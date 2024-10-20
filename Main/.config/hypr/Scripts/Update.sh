sleep 1
clear
_isInstalledAUR() {
    package="$1";
    check="$(paru -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0;
        return;
    fi;
    echo 1;
    return; 
}

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

paru

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