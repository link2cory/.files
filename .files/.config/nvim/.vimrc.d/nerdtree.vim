nmap <C-n> :NERDTreeToggle<CR>

let g:NERDTreeIgnore = [
\	'^node_modules$'
\]

" quit vim if nerdtree is only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
