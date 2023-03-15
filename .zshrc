HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nelande/.zshrc'

autoload -Uz compinit
compinit

alias tmux="TERM=screen-256color-bce tmux"
eval "$(starship init zsh)"
# End of lines added by compinstall
