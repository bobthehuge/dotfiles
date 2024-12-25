# .bashrc

#fixes starting in the middle bug
clear

PS1='\[\e[38;5;124m\]\u\[\e[0m\]@<\[\e[38;5;196m\]\w\[\e[0m\]>\\$ '

export HELIX_RUNTIME=~/prog/rust/helix/runtime
# export RAYLIB_PATH=/usr/local/lib/raylib-5.0_linux_amd64/
export RAYLIB_PATH=/usr/local/lib/raylib-5.0/
export PATH=$PATH:~/scripts/:~/prog/68k/68k_tools/:~/.local/bin:~/.nimble/bin
export PKG_CONFIG_PATH=/usr/lib/pkgconfig/:~/prog/c/BobGL/
export C_INCLUDE_PATH=$C_INCLUDE_PATH:~/prog/c/BobGL/include/:$RAYLIB_PATH"include"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/prog/68k/68k_tools/libs/:~/prog/c/BobGL/lib/:$RAYLIB_PATH"lib"
export LIBRARY_PATH=$LIBRARY_PATH:$RAYLIB_PATH"lib"
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
alias tan='MANWIDTH=$((COLUMNS > 80 ? 80 : COLUMNS)) man'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
. "$HOME/.cargo/env"
