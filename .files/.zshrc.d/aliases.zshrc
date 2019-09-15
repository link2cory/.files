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

# tree shorthand
alias t='tree'

# git shorthand
alias gs='git status'
alias gc='git commit -m'
alias gd='git diff'
alias ga='git add'
alias gap='git add -p'
alias gp='git push'
alias gl='git log --pretty'
alias gcb='git checkout -b'
alias gb='git branch'
