set fish_greeting
set -x FZF_LEGACY_KEYBINDINGS 0

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
abbr --add gca git commit --amend
abbr --add gcm git commit -m
abbr --add gst git status
abbr --add gdf git diff

starship init fish | source
