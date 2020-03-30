source ~/.config/nvim/plugins.vim

colorscheme onedark

" display line numbers
set number relativenumber

" get to normal mode faster
set timeoutlen=1000
set ttimeoutlen=0

set laststatus=2
set noshowmode

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set textwidth=88
set autoindent
set fileformat=unix
set encoding=utf-8
" always use spaced instead of tabs
set expandtab

" disable safe write feature to not interfere with hot reloading
set backupcopy=yes

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

filetype plugin on

set termguicolors

" custom file extensions for syntax highlighting
autocmd BufNewFile,BufRead *.zshrc set syntax=zsh

" execute the directory config
for f in split(glob('~/.config/nvim/.vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor
