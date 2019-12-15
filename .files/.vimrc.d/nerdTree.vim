" nerd Tree keybinds
map <C-n> :NERDTreeToggle<CR>

" open nerd tree window on vim enter
autocmd vimenter * NERDTree

" close nerd tree window if its the only window open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
