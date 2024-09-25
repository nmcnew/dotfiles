export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git rust tmux dnf)
source $ZSH/oh-my-zsh.sh
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PATH="$PATH:/home/nick/.dotnet/tools"        
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

alias ls='eza -1 --icons'
alias cat='bat'
alias grep='grep --color=auto'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias kittyedit='nvim /home/nick/.config/kitty/kitty.conf'
alias nvimedit='cd /home/nick/.config/nvim/; nvim .'
alias resource='source /home/nick/.zshrc'
alias copy='kitten clipboard'
alias paste='kitten clipboard -g'

. "$HOME/.cargo/env"

export DOTNET_ENVIRONMENT="Development"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
