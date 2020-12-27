# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# tmux
shopt -s checkwinsize
if [[ -z "$TMUX" && -z "$STY" ]] && type tmux >/dev/null 2>&1; then
  if tmux has-session -t xps; then
    tmux attach -t xps && exit
  else
    tmux new -s xps && exit
  fi
  tmux $option && exit
fi

# history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
shopt -s histappend

# prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\nbash) '
else
    PS1='\u@\h:\w\nbash) '
fi
unset color_prompt
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# alias
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

alias ls='exa --icons --group-directories-first --git --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ncdu='ncdu --color dark -rr'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias em='emacs'
alias lg='lazygit'

# completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

eval "$(pyenv init -)"
