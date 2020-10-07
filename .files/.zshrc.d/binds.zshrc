# remove the clear screan binding reserved for tmux and vim pane/split navigation
bindkey -r '^l'

# kills any tmux pane with the title 'vim-term'
function tmux_kill_vim_term_pane {
 tmux-kill-pane-by-title vim-term
  echo "hello world"
  
}

# kill-vim-term-pane-widget()  LBUFFER+=$(kill_vim_term_pane)
zle -N tmux_kill_vim_term_pane
bindkey '^b' tmux_kill_vim_term_pane

# Allow Ctrl-z to toggle between suspend and resume
function Resume {
  fg
  zle push-input
  BUFFER=""
  zle accept-line
}
zle -N Resume
bindkey "^Z" Resume

#bindkey '^v' $(edit)
