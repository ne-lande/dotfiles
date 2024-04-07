bindkey -v
bindkey -e

#
# Aliases
#

#we do some funny

export GTK_USE_PORTAL=1
export XDG_DESKTOP_PORTAL=1
export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_CONFIG_HOME="$HOME/.config" # zshenv
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export HISTFILE="$XDG_STATE_HOME/zsh/history"
#export ZDOTDIR="$HOME/.config/zsh" # zshenv

# we got the working paths done
export PATH="$PATH:~/bin:$(go env GOBIN):$(go env GOBIN)/bin:~/scripts:/usr/local/sbin:~/.cargo/bin"
export PATH="/home/nelande/.deno/bin:$PATH"
export GEM_PATH="$(gem env user_gemhome)"
export GEM_HOME="$GEM_PATH"
export PATH="$PATH:$GEM_HOME/bin"

#bat shit
export PAGER="bat"
export BAT_THEME="OneHalfDark"

unameOut="$(uname -s)"

if [ $unameOut = Linux ]; then
    export KITTY_OS="linux"
elif [ $unameOut = Darwin]; then
    export KITTY_OS="macos"
fi

# i hate pager mod >:c
alias bat='bat --style=numbers --paging never'

# ls funny
alias l="exa -lhF --icons"
alias la="exa -lahF --icons"
alias lsd="exa -lhDF --icons"
alias ls="exa --icons"

# top funny
alias top="btop"
alias htop="btop"
alias atop="btop"

# other funny
alias c='clear'
alias grep="grep --color=auto "
alias sudo='sudo '
alias ping='ping -c 5'
alias reload='source $ZDOTDIR/.zshrc'

if [ $KITTY_OS = linux ]; then
    alias update='sudo pacman -Syu'
elif [ $KITTY_OS = macos ]; then
    alias update='brew update && brew upgrade'
fi

#kitty magix
alias ssh="kitty +kitten ssh"
alias icat="kitty +kitten icat"
alias diff="kitty +kitten diff"

# something
alias untar='tar xvf'
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'

# zsh plugins :0
source "$HOME/.local/share/miniplug.zsh"

#compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'

miniplug load

eval "$(starship init zsh)"
fortune -s 
# End of lines added by compinstall

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/home/nelande/yandex-cloud/path.bash.inc' ]; then source '/home/nelande/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
#if [ -f '/home/nelande/yandex-cloud/completion.zsh.inc' ]; then source '/home/nelande/yandex-cloud/completion.zsh.inc'; fi
