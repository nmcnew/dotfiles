#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:/home/nick/.dotnet/tools"        
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias kittyedit='nvim /home/nick/.config/kitty/kitty.conf'
alias nvimedit='cd /home/nick/.config/nvim/; nvim .'
alias resource='source /home/nick/.bashrc'
alias copy='kitten clipboard'
alias paste='kitten clipboard -g'

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

export DOTNET_ENVIRONMENT="Development"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

