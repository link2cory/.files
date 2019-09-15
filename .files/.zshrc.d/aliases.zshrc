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

# docker 
alias di='docker image'
alias dt='docker container'
alias dv='docker volume'
alias dn='docker network'

# docker machine
alias dm='docker-machine'

# docker compose
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcr='docker-compose restart'
alias dcl='docker-compose logs'

# custom docker scripts
alias dpa='docker-prune-all'
