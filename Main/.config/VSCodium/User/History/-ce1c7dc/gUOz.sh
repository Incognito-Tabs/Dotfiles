threshhold_green=0
threshhold_yellow=25
threshhold_red=100

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(paru -Qu --aur --quiet | wc -l); then
    updates_aur=0
fi


updates=$(("$updates_arch" + "$updates_aur"))
css_class="green"

if [ "$updates" -gt $threshhold_yellow ]; then
    css_class="yellow"
fi

if [ "$updates" -gt $threshhold_red ]; then
    css_class="red"
fi

if [ "$updates" -gt $threshhold_green ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "Click to update your system", "class": "%s"}' "$updates" "$updates" "$updates"
else
    printf '{"text": "0", "alt": "0", "tooltip": "No updates available"}'
fi