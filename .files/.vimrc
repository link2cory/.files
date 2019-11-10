" auto-install Vundle
if empty(glob('~/.vim/bundle/Vundle.vim'))
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim	
  source ~/.vim/vundle.vim
  PluginInstall
  " run the YCM external binary install script
  ! python ~/.vim/bundle/YouCompleteMe/install.py
else
  source ~/.vim/vundle.vim
endif

" display line numbers
set number relativenumber

" get to normal mode faster
set timeoutlen=1000
set ttimeoutlen=0

set laststatus=2
set noshowmode

" execute the directory config
for f in split(glob('~/.vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

" custom file extensions for syntax highlighting
autocmd BufNewFile,BufRead *.zshrc set syntax=zsh


let test#strategy = "dispatch_background"
