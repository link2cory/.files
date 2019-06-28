nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l

" stay away from the escape key
inoremap gg <Esc>
inoremap <Esc> <NOP>
" incsearch plugin
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" save keys
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <silent> <C-S> <C-o>:<C-u>Update<CR> 
nnoremap qq :q!<CR>
nnoremap qw :wq<CR>

