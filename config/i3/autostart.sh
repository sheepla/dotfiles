#!/usr/bin/env bash

_has() {
    command -v "${1}" &>/dev/null
}

# Reload ~/.Xresources for urxvt and other
xresources="$HOME/.Xresources"
[ -f "$xresources" ] && _has xrdb && xrdb "$xresources"

# Set display layout and resolution (Using ArandR)
layout_config="$HOME/.config/arandr/layout.sh"
[ -f "$layout_config" ] && sh "$layout_config"

# Set wallpaper
_has nitrogen && nitrogen --restore &

# Launch composite manger
if _has picom && ! pgrep picom
then
    picom_conf="$HOME/.config/picom/picom.conf" 

    if [ -f $picom_conf ]
    then
        picom --config "$picom_conf" --daemon --experimental-backends &
    else
        picom --daemon --experimental-backends &
    fi 
fi

# Launch clipboard manager
_has greenclip && pgrep greenclip || greenclip daemon &

# Launch pulseaudio
_has pulseaudio && pgrep pulseaudio || pulseaudio --start &

# Launch volume applet
_has volumeicon &>/dev/null && pgrep volumeicon || sleep 3 && volumeicon &

# Launch screenshot applet
_has flameshot && pgrep flameshot || flameshot &

# Launch network applet
_has nm-applet &>/dev/null && pgrep nm-applet || nm-applet &

# Launch input method
_has fcitx5 &>/dev/null && pgrep fcitx5 || fcitx5 &

# Power event alerting daemon
_has poweralertd && pgrep poweralertd || poweralertd &

