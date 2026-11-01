#!/usr/bin/env bash
# Installs the Cinder lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/cinder.yml" ] && cp "$dest/cinder.yml" "$dest/cinder.yml.bak"
cp "$dir/cinder.yml" "$dest/"
echo "Done. zsh/cinder.zsh points LG_CONFIG_FILE at config.yml plus cinder.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/cinder.yml\""
