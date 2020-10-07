
"nnoremap <silent> <C-t> :w<CR>:TestNearest<CR>

" incsearch plugin
"map / <Plug>(incsearch-forward)
"map ? <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" Copy and Paste to/from system clipboard
nnoremap <C-y> "+Y
vnoremap <C-y> "+Y
nnoremap <C-p> "+p

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
" nnoremap <C-q> :bd
nnoremap qq :qa!<cr>
nnoremap qw :wqa<CR>
nnoremap <C-r> :source ~/.config/nvim/init.vim<CR>
:let mapleader=" "

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
"
" open a real terminal
function! OpenTerm()
  silent !clear
  silent !tmux split-window -l 10 -f && tmux select-pane -D -T vim-term
  " silent !clear
  " silent !tmux select-pane -D -T vim-term
  " :!tmux split-window -l 10 -f
  " :!tmux select-pane -D -T vim-term
endfunction
" nnoremap <silent> <A-t> :!tmux split-window -l 10 -f && tmux select-pane -D -T vim-term<cr>
nnoremap <silent> <A-t> :call OpenTerm()<cr>

" ale remaps
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)
nnoremap <silent> af :ALEFix<CR>

" buffer control
nnoremap <silent> <Left> :bp<cr>
nnoremap <silent> <Right> :bn<cr>

" clear search
nnoremap <Leader><space> :let @/=""

" buffer jetpack
nnoremap <leader>l :ls<CR>:b<space>

" CoC maps
"
" Remap keys for applying codeAction to the current line.
nmap <C-space>  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <leader>d  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <leader>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" fzf-vim maps
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>F :Files!<cr>
