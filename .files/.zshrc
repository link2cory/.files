# download antigen (zsh plugin manager)
if [ ! -f ~/.zsh/antigen.zsh ]; then 
  curl -Lo git.io/antigen-nightly ~/.zsh/antigen.zsh --create-dirs
fi
source ~/.zsh/antigen.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cory/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# powerlevel9k configuration
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="green"
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND="black"
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="blue"
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="black"
#POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="red"
#POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="green"
#source ~/powerlevel9k/powerlevel9k.zsh-theme

# use materialshell theme
#antigen theme carloscuesta/materialshell materialshell
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen bundle gretzky/auto-color-ls
antigen bundle ael-code/zsh-colored-man-pages

# Tell Antigen that you're done.
antigen apply

# deal with tmux 256 color dealio
alias tmux='tmux -2'
