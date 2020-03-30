# download antigen (zsh plugin manager)
if [ ! -f ~/.zsh/antigen.zsh ]; then 
  curl -Lo git.io/antigen-nightly ~/.zsh/antigen.zsh --create-dirs
fi
source ~/.zsh/antigen.zsh

bindkey -v
# End of lines configured by zsh-newuser-install

autoload -U colors && colors
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cory/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

antigen theme bhilburn/powerlevel9k powerlevel9k
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done.
antigen apply

# zsh-autosuggestions settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

# add completion scripts to fpath
fpath=(~/.zsh/completion $fpath)

# 10ms for key sequences
KEYTIMEOUT=1

# set default editor to vim
export VISUAL=nvim
export EDITOR="$VISUAL"

# add bin and local/bin to PATH
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin

# break the config into pieces
for file in ~/.zshrc.d/*.zshrc; do
  source "$file"
done
#compdef toggl
_toggl() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _TOGGL_COMPLETE=complete-zsh  toggl)
}
if [[ "$(basename -- ${(%):-%x})" != "_toggl" ]]; then
  autoload -U compinit && compinit
  compdef _toggl toggl
fi
