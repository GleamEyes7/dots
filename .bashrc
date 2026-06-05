#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# listing
alias grep='grep --color=auto'
alias ls='eza --long --icons=auto --sort type --header --no-quotes'
alias lsa='ls --all --header'
alias lt='ls --tree --level=2'
alias lta='lsa --tree --level=2'

# traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# alts
alias cat='bat'

# git
# alias gs='git status'
# alias gl='git log'
# alias glo='git log --oneline'
# alias ga='git add'
# alias gc='git commit'
# alias gcm='git commit -m'

export PATH=$PATH:$HOME/.local/bin

PS1='[\u@\h \W]\$ '
export EDITOR=nvim
export VISUAL=nvim

eval "$(starship init bash)"

# Pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Git completion
if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi

export BROWSER=wslview
