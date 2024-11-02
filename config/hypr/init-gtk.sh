#!/bin/sh

# usage: import-gsettings
config="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini"

if [ ! -f "$config" ]; then 
  echo "GTK config file not exists: ${config}" 1>&2
  exit 1
fi

gnome_schema="org.gnome.desktop.interface"
gtk_theme="$(grep -F 'gtk-theme-name' "${config}" | sed 's/.*\s*=\s*//')"
icon_theme="$(grep -F 'gtk-icon-theme-name' "${config}" | sed 's/.*\s*=\s*//')"
cursor_theme="$(grep -F 'gtk-cursor-theme-name' "${config}" | sed 's/.*\s*=\s*//')"
font_name="$(grep -F 'gtk-font-name' "${config}" | sed 's/.*\s*=\s*//')"

gsettings set "${gnome_schema}" gtk-theme "$gtk_theme"
gsettings set "${gnome_schema}" icon-theme "$icon_theme"
gsettings set "${gnome_schema}" cursor-theme "$cursor_theme"
gsettings set "${gnome_schema}" font-name "$font_name"

