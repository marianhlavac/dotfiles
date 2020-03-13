# Env settings
HIST_STAMPS="yyyy-mm-dd"

# Completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
autoload -Uz compinit && compinit

# Load plugins and aliases
source ~/.zsh/zsh_plugins.zsh
source ~/.zsh/zsh_aliases.zsh

# THEFUUUCK
eval $(thefuck --alias)

# PATH
export PATH="/usr/local/sbin:$HOME"