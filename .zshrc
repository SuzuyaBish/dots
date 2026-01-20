export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

bup() {
  brew update 
  brew upgrade
  brew cleanup
}

alias cd="z"
alias ls="eza -la"
alias cat="bat"
alias cl="clear"
alias zj="zellij"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/jay/.bun/_bun" ] && source "/Users/jay/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
