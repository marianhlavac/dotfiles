# Env settings
export ZSH="/Users/majko/.oh-my-zsh"
HIST_STAMPS="yyyy-mm-dd"

# Load Oh My Zsh and Zsh plugins
source $ZSH/oh-my-zsh.sh
source ~/.zsh_plugins.sh

# Aliases
alias update_plugins="antibody bundle < ~/.zsh_plugins_list > ~/.zsh_plugins.sh"
alias dcup="docker-compose up -d"

# PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"