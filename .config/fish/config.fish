set fish_greeting
set -x FZF_LEGACY_KEYBINDINGS 0

set -x DOTFILES_HOME (cat $HOME/.envdotfiles)
set PATH $DOTFILES_HOME/bin $PATH

set PATH $HOME/julia/bin $PATH
set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH

set PATH /usr/local/cuda/bin $PATH
set LD_LOAD_PATH /usr/local/cuda/lib64 $LD_LOAD_PATH

alias ls="exa --icons --group-directories-first --git"
alias ncdu="ncdu --color dark -rr"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

abbr --add em emacs
abbr --add lg lazygit

abbr --add ga git add
abbr --add gau git add --update
abbr --add gaa git add --all
abbr --add gc git commit
abbr --add gca git commit -a
abbr --add gcm git commit -m
abbr --add gcam git commit -am
abbr --add gs git status
abbr --add gd git diff

starship init fish | source
pyenv init - | source