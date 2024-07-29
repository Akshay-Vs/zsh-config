export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="agnoster"

# Variables
WORKING_DIR=$(pwd)
USER_NAME=$(whoami)
HOME_DIR=$(eval echo ~$USER_NAME)
SYS_NAME=$(uname -o)

# Case-sensitive completion
CASE_SENSITIVE="true"

# Update settings
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 10

# Plugins
plugins=(git copybuffer web-search z zsh-autosuggestions node npm sudo vscode dirhistory)

source $ZSH/oh-my-zsh.sh

# Language environment
export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='vim'
if [[ -z $SSH_CONNECTION ]]; then
    export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Aliases
alias config="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias start-tor="echo 'Running Tor...\nDo not close' && $HOME_DIR/tor-browser/Browser/start-tor-browser"
alias kctl="minikube kubectl --"
alias settings="nano ~/.zshrc"

# Git aliases
alias gad="git add ."
alias gckt="git checkout"
alias gcmt="git commit -p"
alias gps="git push"
alias gpl="git pull"
alias ggraph="git log --all --decorate --oneline --graph"

# Custom Commands
clear

# Execute neofetch if pwd is home
if [[ "$WORKING_DIR" == "$HOME_DIR" ]]; then
    DISABLE_AUTO_TITLE="true"
    echo -ne "\033]0;Welcome $USER_NAME\007"
    neofetch
else
    figlet "$SYS_NAME" | lolcat
fi

# pnpm
export PNPM_HOME="$HOME_DIR/.local/share/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
