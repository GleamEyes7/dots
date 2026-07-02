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
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"

# Git completion
if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi

export BROWSER=wslview

pypytime() {
  if [[ "$1" == *.py ]]; then
    # Separators: Dim White (\e[2;37m)
    # Brackets/Text: Bold Green (\e[1;32m)
    # Time Number (%R): Bold Yellow (\e[1;33m)
    TIMEFORMAT=$'\e[2;37m===========================\n[\e[0m\e[1;32mExecuted in \e[1;33m%R\e[1;32m seconds\e[2;37m]\e[2;37m\n===========================\e[0m'
    time pypy3 "$@"
  else
    # Fallback to standard pypy3 behavior (REPL, flags, etc.)
    pypy3 "$@"
  fi
}

# Alias so you only have to type 'pypy'
alias pypy="pypytime"
