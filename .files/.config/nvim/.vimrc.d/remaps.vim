"run automated testing
"nnoremap <silent> <C-t> :w<CR>:TestNearest<CR>

" incsearch plugin
"map / <Plug>(incsearch-forward)
"map ? <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" save keys
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
"command -nargs=0 -bar Update if &modified
"                           \|    if empty(bufname('%'))
"                           \|        browse confirm write
"                           \|    else
"                           \|        confirm write
"                           \|    endif
"                           \|endif
"nnoremap <silent> <C-S> :<C-u>Update<CR>
"inoremap <silent> <C-S> <C-o>:<C-u>Update<CR> 
nnoremap <C-w> :wnext<cr>
nnoremap <C-s> :w<cr>
nnoremap <C-q> :bd<cr>
nnoremap qq :qa!<cr>
nnoremap qw :wqa<CR>
nnoremap <C-r> :source ~/.config/nvim/init.vim<CR>
:let mapleader=","

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" ale remaps
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)
nnoremap <silent> af :ALEFix<CR>
