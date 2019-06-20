" auto-install Vundle
if empty(glob('~/.vim/bundle/Vundle.vim'))
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim	
  source ~/.vim/vundle.vim
  PluginInstall
else
  source ~/.vim/vundle.vim
endif

set number relativenumber
set laststatus=2
set noshowmode

for f in split(glob('~/.vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

" incsearch plugin
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
