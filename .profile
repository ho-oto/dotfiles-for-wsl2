if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export DOTFILES_ROOT="$HOME/.dotfiles"
export PATH="$DOTFILES_ROOT/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.fzf/bin:$PATH"

export PATH="/usr/local/cuda/bin:$PATH"
export LD_LOAD_PATH="/usr/local/cuda/lib64:$LD_LOAD_PATH"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
