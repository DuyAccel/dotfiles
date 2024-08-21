# Created by newuser for 5.9
#
export EDITOR=nvim
#
# Secrets
#

# Appearance
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zsh.json)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=251"

# Functions 
alias ls='eza --icons=always -lhgm'
alias xclip-cp='xclip -selection clipboard'

# System
alias sdown='shutdown now'
alias restart='reboot'

cd  /home/workspace
