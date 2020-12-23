#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $TERM != "screen" ]] && exec tmux
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# neofetch

alias lsl="ls -l"
alias lsh="ls -lh"
alias lsa="ls -lah"
alias t="tmux"
alias ta="tmux attach"
alias tl="tmux ls"
alias q="exit"
alias c="clear"
alias h="history"
alias cl="clear;ls -l"
alias p="cat"
alias pd="pwd"
alias k="kill"
alias ..="cd .."
alias vimrc="nvim ~/.config/nvim/init.vim"
alias bashrc="nvim ~/.bashrc"
alias nivm="nvim"
alias cat='cat'
alias grep='grep --color=auto '
alias sl='ls'
alias update="pacman -Syu && flatpak update"
alias lg="lazygit"



source /etc/profile.d/vte.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi
PS1='{\u@\W}\$ '


# Let there be color in grep!
export EDITOR=nvim
