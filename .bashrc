#fixes starting in the middle bug in st
clear

PS1='\[\e[38;5;124m\]\u\[\e[0m\]@<\[\e[38;5;196m\]\w\[\e[0m\]>\\$ '

export PATH=$PATH:~/scripts/:~/prog/68k/68k_tools/:~/.local/bin:~/.nimble/bin
export PKG_CONFIG_PATH=/usr/lib/pkgconfig/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/prog/68k/68k_tools/libs/
export TERM='xterm-256color'
export EDITOR='hx'
export RUST_BACKTRACE=1
export I3CONFIG=".config/i3/config"

alias ls='ls -aoh --color=auto'
alias pwdless="PS1='\[\e[38;5;124m\]\u\[\e[0m\]\\$ '"
alias pwdoff="PS1='\[\e[38;5;124m\]bob\[\e[0m\]\\$ '"
alias gf='~/prog/c/gf/gf2'
alias cat='bat'
alias ok-boomer='sudo poweroff'
alias ocaml='rlwrap ocaml'
alias eco-mode="kill $(ps aux | grep 'pipewire' | awk '{print $2}')"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
. "$HOME/.cargo/env"
