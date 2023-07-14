HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
bindkey -e


#
# Aliases
#

#we do some funny
alias vi="nvim"
alias vim="nvim"
alias nano="nvim"
alias hx="nvim"

export GTK_USE_PORTAL=1
export XDG_DESKTOP_PORTAL=1
export PATH="$PATH:~/bin:~/go/bin"
export PATH="$PATH:/usr/local/sbin"
export PAGER="bat"
export BAT_THEME="Monokai Extended Bright"

# ls funny
alias l="exa -lhF --icons"
alias la="exa -lahF --icons"
alias lsd="exa -lhDF --icons"
alias ls="exa --icons"

# top funny
alias top="btop"
alias htop="btop"
alias atop="btop"
alias c='clear'
alias grep="grep --color=auto "
alias sudo='sudo '
alias ping='ping -c 5'
alias reload='source ~/.zshrc'
alias update='brew update && brew upgrade'

#kitty magix
alias ssh="kitty +kitten ssh"
alias icat="kitty +kitten icat"
alias diff="kitty +kitten diff"

# something
alias untar='tar xvf'
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'

source "$HOME/.local/share/miniplug.zsh"

miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'

miniplug load

eval "$(starship init zsh)"
fortune -s 
# End of lines added by compinstall
