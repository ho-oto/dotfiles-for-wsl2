set fish_greeting
set -x FZF_LEGACY_KEYBINDINGS 0

set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"

set -x DOTFILES_ROOT "$HOME/.dotfiles"
set -x PATH "$DOTFILES_ROOT/bin" $PATH

set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH "$PYENV_ROOT/bin" $PATH

set -x PATH "$HOME/.poetry/bin" $PATH

set -x PATH "$HOME/.cargo/bin" $PATH

set -x PATH /usr/local/cuda/bin $PATH
set -x LD_LOAD_PATH /usr/local/cuda/lib64 $LD_LOAD_PATH

set -x PATH /usr/local/texlive/2020/bin/x86_64-linux $PATH
set -x MANPATH /usr/local/texlive/2020/texmf-dist/doc/man $MANPATH
set -x INFOPATH /usr/local/texlive/2020/texmf-dist/doc/info $INFOPATH

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

alias ls="exa --icons --group-directories-first --color=auto"
alias ll="ls --long --header --git"
alias la="ll --all"
alias lt="ls --tree"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias ncdu="ncdu --color dark -rr"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias pbcopy='socat - UNIX-CLIENT:$HOME/.clipper.sock'

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
zoxide init fish | source
status is-login; and pyenv init --path | source
pyenv init - | source
status is-interactive; and pyenv virtualenv-init - | source
status is-interactive; and /home/linuxbrew/.linuxbrew/bin/brew shellenv | source

function brew
    set --export --local PATH $PATH
    if type -q pyenv
        while contains (pyenv root)/shims $PATH
            set --erase PATH[(contains --index (pyenv root)/shims $PATH)]
        end
    end
    if type -q cargo-install-update-config
        set CARGO_PATH (dirname (which cargo-install-update-config))
        while contains $CARGO_PATH $PATH
            set --erase PATH[(contains --index $CARGO_PATH $PATH)]
        end
    end
    command brew $argv
end
