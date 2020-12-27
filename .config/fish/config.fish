set fish_greeting
set -x FZF_LEGACY_KEYBINDINGS 0

if test -f "$HOME/.envdotfiles"
    set -x DOTFILES_HOME (cat "$HOME/.envdotfiles")
    set -x PATH "$DOTFILES_HOME/bin" $PATH
end

set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH "$PYENV_ROOT/bin" $PATH

set -x PATH "$HOME/.cargo/bin" $PATH

set -x PATH "$HOME/.fzf/bin" $PATH

set -x PATH /usr/local/cuda/bin $PATH
set -x LD_LOAD_PATH /usr/local/cuda/lib64 $LD_LOAD_PATH

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

alias ls="exa --icons --group-directories-first --git --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
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
abbr --add gp git push

starship init fish | source
pyenv init - | source