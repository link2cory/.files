" nerd Tree keybinds
map <C-n> :NERDTreeToggle<CR>

" close nerd tree window if its the only window open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
