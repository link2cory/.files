nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>
" let g:test#strategy = "dispatch"
let g:test#strategy = "neomake"
let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
let g:neomake_open_list = 1
" set makeprg=./node_modules/.bin/jest\ --reporters\ jest-vim-reporter

" close the quickfix window if only buffer open
" aug QFClose
  " au!
  " au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
" aug END
