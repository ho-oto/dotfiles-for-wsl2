set fish_greeting
set -x FZF_LEGACY_KEYBINDINGS 0

set PATH /usr/local/cuda/bin $PATH
set LD_LOAD_PATH /usr/local/cuda/lib64 $LD_LOAD_PATH

starship init fish | source
