" configurations for ale plugin
let g:ale_list_window_size = 10
let g:ale_open_list = 1

" always lint on any text changed
"let g:ale_lint_on_text_changed = 'always'

" show errors and warnings in lightline
let g:airline#extensions#ale#enabled = 1

" close the error list when the buffer closes
augroup CloseLoclistWindowGroup
	autocmd!
	autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

let g:ale_set_highlights = 1

let g:ale_linters_explicit = 1
let g:ale_linters = {
\ 'javascript': ['eslint']
\}
