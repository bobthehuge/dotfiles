#fixes starting in the middle bug in st
clear

PS1='\[\e[38;5;124m\]\u\[\e[0m\]@<\[\e[38;5;196m\]\w\[\e[0m\]>\\$ '

if [[ $TMUX ]]
then
  PS1="(tmux)$PS1"
fi

export LOCAL_IP4=$(ip -br -4 addr list|tail -n+2|awk '{print $3}'|cut -d/ -f1)
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
alias cat='bat'
alias ok-boomer='sudo poweroff'
alias ocaml='rlwrap ocaml'
alias eco-mode="kill $(ps aux | grep 'pipewire' | awk '{print $2}')"
alias zedup='curl -f https://zed.dev/install.sh | sh'
alias feh='feh -B black -H 1080 -.'
alias rm='rm -I' # because i'm dumb...

function discordup() {
  sudo sh -c "wget 'https://discord.com/api/download?platform=linux&format=tar.gz' -O - | sudo tar -xzf - -C /usr/local/var/lib/";
}

export -f discordup

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
