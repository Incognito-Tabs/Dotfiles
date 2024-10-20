case $1 in
    d) cliphist list | rofi -dmenu -replace | cliphist delete
       ;;

    w) if [ `echo -e "Clear\nCancel" | rofi -dmenu` == "Clear" ] ; then
            cliphist wipe
       fi
       ;;

    *) cliphist list | rofi -dmenu -replace | cliphist decode | wl-copy
       ;;
esac