#!/usr/bin/env bash
# Installs the cosmic-cinder Discord theme (Cinder dark / Cinder Day light) for
# Vencord and Vesktop, into whichever of their config folders exist.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
installed=0
for app in Vencord vesktop; do
    [ -d ~/.config/$app ] || continue
    dest=~/.config/$app/themes
    mkdir -p "$dest"
    [ -f "$dest/cosmic-cinder.theme.css" ] && cp "$dest/cosmic-cinder.theme.css" "$dest/cosmic-cinder.theme.css.bak"
    cp "$dir/cosmic-cinder.theme.css" "$dest/"
    echo "  $app: $dest/cosmic-cinder.theme.css"
    installed=1
done
if [ "$installed" = 0 ]; then
    echo "No ~/.config/Vencord or ~/.config/vesktop found. Start the app once, or copy by hand:"
    echo "  $dir/cosmic-cinder.theme.css -> <app config>/themes/"
    exit 0
fi
echo "Done. Discord: Settings -> Vencord -> Themes -> tick Cosmic Cinder."
echo "Appearance -> Theme -> Sync with computer follows COSMIC's Dark / Light toggle."
