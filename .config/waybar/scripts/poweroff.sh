entries="Reiniciar Desligar"
selected=$(printf '%s\n' $entries | wofi -dmenu | awk '{print tolower($1)}')
case $selected in
    reiniciar) exec systemctl reboot;;
    desligar) exec systemctl poweroff -i;;
esac