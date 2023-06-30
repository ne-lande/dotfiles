HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
bindkey -e


#
# Aliases
#

#we do some funny
alias vim="nvim"
alias nano="nvim"

# gnu or os x ls
if ls --color > /dev/null 2>&1; then
	colorflag="--color"
else
	colorflag="-G"
fi

export GTK_USE_PORTAL=1
export XDG_DESKTOP_PORTAL=1

export PATH=~/bin:~/go/bin:$PATH

# ls funny
alias l="ls -lhF ${colorflag}"
alias la="ls -lahF ${colorflag}"
alias lsd="ls -lhF ${colorflag} | grep --color=never '^d'"
alias ls="ls ${colorflag}"

alias grep="grep --color=auto "

#kitty magix
alias ssh="kitty +kitten ssh"
alias icat="kitty +kitten icat"
alias diff="kitty +kitten diff"

# something
alias untar='tar xvf'
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'

eval "$(starship init zsh)"
# End of lines added by compinstall
