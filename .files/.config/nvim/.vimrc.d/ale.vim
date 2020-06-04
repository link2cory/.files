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

let g:ale_typescript_prettier_use_local_config = 1

" Linters
let g:ale_linters_explicit = 1
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint', 'tsserver'],
\ 'python': ['mypy']
\}

" python specific
let g:ale_python_auto_pipenv = 1
let g:ale_python_mypy_auto_pipenv = 1
let g:ale_python_mypy_executable = 'pipenv'
let g:ale_python_mypy_ignore_invalid_syntax = 1

" Fixers
let g:ale_fix_on_save = 1
nmap <C-f> <Plug>(ale_fix)
let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'typescript': ['prettier', 'eslint'],
\  'html': ['prettier'],
\  'css': ['prettier'],
\  'python': ['black'],
\}
