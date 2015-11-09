# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hangyagy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color'
export PS1="%F{magenta}%n%f in %F{yellow}%d%f
○ "

bindkey "\e[5~" history-search-backward
bindkey "\e[6~" history-search-forward
