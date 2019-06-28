# deal with tmux 256 color dealio
alias tmux='tmux -2'

# disable flow control in the terminal while vim is running
alias vim="stty stop '' -ixoff ; vim"
ttyctl -f

# always use ls colors
alias ls='ls --color=tty'
alias ll='ls -lp'
alias la='ls -lap'

alias grep='grep --color=auto --exclude-dir={.git}'
