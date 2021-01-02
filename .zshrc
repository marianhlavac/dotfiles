# Env settings
HIST_STAMPS="yyyy-mm-dd"

# Completions
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit
source <(kubectl completion zsh)
complete -F __start_kubectl k

# Load plugins
source ~/.zsh/.zsh_plugins.zsh

# Options
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus
setopt long_list_jobs

# Aliases
source ~/.zsh/git_aliases.zsh

alias dcup="docker-compose up"
alias l='exa -lga --group-directories-first --git'
alias k="kubectl"
alias d="docker"
alias dcup="docker-compose up -d"
alias dcupd="docker-compose up -d"
alias kgaa="kubectl get all -A"
alias kcu="kubectl config use-context"
alias update_plugins="antibody bundle < ~/.zsh/zsh_plugins_list > ~/.zsh/zsh_plugins.zsh"

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias md='mkdir -p'

# PATH
export PATH="/usr/local/sbin:$HOME/.flutter/bin:$PATH"

if [ -f '/usr/local/etc/google-cloud-sdk/path.zsh.inc' ]
    then . '/usr/local/etc/google-cloud-sdk/path.zsh.inc'
fi

if [ -f '/usr/local/etc/google-cloud-sdk/completion.zsh.inc' ]
    then . '/usr/local/etc/google-cloud-sdk/completion.zsh.inc'
fi

# Others
source ~/.zsh/temp_vars.zsh
export HOMEBREW_NO_AUTO_UPDATE=1
