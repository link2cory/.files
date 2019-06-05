
" use colors
if !has('gui_running')
  set t_Co=256
endif

if (has("termguicolors"))
  set termguicolors
endif

" OneDarkVim plugin config
syntax on
colorscheme onedark

" make a link to the OneDarkVim color scheme for lightline so we can use it
if empty('~/.vim/autoload/lightline')
  silent !mkdir ~/.vim/autoload
  silent !ln -s ~/.vim/bundle/onedark.vim/autoload/lightline ~/.vim/autoload/lightline
endif

" lightline
let g:lightline = {
  \ 'colorscheme': 'onedark',
\ }
