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
alias ls="eza -la --no-user --no-filesize"
alias cat="bat"
alias cl="clear"
alias lg="lazygit"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export XDG_CONFIG_HOME="$HOME/.config"

# bun completions
[ -s "/Users/jay/.bun/_bun" ] && source "/Users/jay/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/jay/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(zoxide init zsh)"

# Added by GitButler installer
eval "$(but completions zsh)"
