# remove the clear screan binding reserved for tmux and vim pane/split navigation
bindkey -r '^l'

# Allow Ctrl-z to toggle between suspend and resume
function Resume {
  fg
  zle push-input
  BUFFER=""
  zle accept-line
}
zle -N Resume
bindkey "^Z" Resume
