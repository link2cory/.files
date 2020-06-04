call plug#begin('~/.config/nvim/plugged')

"intelisense engine for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" snippets
Plug 'SirVer/ultisnips'

" linting and fixing
Plug 'dense-analysis/ale'

" project tree
Plug 'scrooloose/nerdtree'

"nerd tree filetype colors
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" nerd tree git icons
Plug 'Xuyuanp/nerdtree-git-plugin'

" git gutter signs
Plug 'airblade/vim-gitgutter'

" add comment hotkeys
Plug 'scrooloose/nerdcommenter'

" tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" icons
Plug 'ryanoasis/vim-devicons'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color schemes
Plug 'joshdick/onedark.vim'

call plug#end()
