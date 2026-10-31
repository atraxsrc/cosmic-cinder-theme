# Cinder zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-cinder-theme/zsh/cinder.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #121212   fg:      #B3ADAD
#  orange:  #CC6528   peach:   #E19E74
#  brick:   #C75E57   sage:    #A5A297
#  sand:    #C6C4B0   olive:   #90947A
#  muted:   #8A8575   dim:     #626A78
#
# Dark terminal: orange for commands, sage for strings, sand for links,
# brick only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;144;148;122:ln=3;38;2;198;196;176:ex=1;38;2;204;101;40:*.zip=4;38;2;225;158;116:*.tar=4;38;2;225;158;116:*.gz=4;38;2;225;158;116:*.xz=4;38;2;225;158;116:*.7z=4;38;2;225;158;116:*.deb=4;38;2;225;158;116:*.png=38;2;138;133;117:*.jpg=38;2;138;133;117:*.jpeg=38;2;138;133;117:*.webp=38;2;138;133;117:*.gif=38;2;138;133;117:*.mp4=3;38;2;138;133;117:*.mkv=3;38;2;138;133;117:*.rs=38;2;165;162;151:*.py=38;2;165;162;151:*.js=38;2;165;162;151:*.ts=38;2;165;162;151:*.sh=38;2;165;162;151:*.md=38;2;164;164;164:*.txt=38;2;164;164;164:or=9;38;2;199;94;87"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#4E4C49'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#CC6528'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#CC6528'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#CC6528'
ZSH_HIGHLIGHT_STYLES[function]='fg=#CC6528'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#CC6528'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#CC6528,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#A5A297,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#90947A,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#C75E57,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#A4A4A4,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#E19E74'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#E19E74'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#8A8575'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#8A8575'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#A5A297'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#A5A297'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#A5A297'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#8A8575'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#8A8575'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#626A78'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
