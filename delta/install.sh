#!/usr/bin/env bash
# Installs the Cinder delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/cinder.gitconfig" ] && cp "$dest/cinder.gitconfig" "$dest/cinder.gitconfig.bak"
cp "$dir/cinder.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/cinder.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/cinder.gitconfig"
fi
echo "Needs the bat Cinder theme for the code colours: ./bat/install.sh"
