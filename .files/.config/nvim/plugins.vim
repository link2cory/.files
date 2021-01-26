call plug#begin('~/.config/nvim/plugged')

"intelisense engine for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
\  'coc-tsserver',
\  'coc-jest',
\  'coc-html',
\  'coc-snippets',
\  'coc-css',
\  'coc-json',
\  'coc-python',
\  'coc-prisma',
\]

" snippets
Plug 'SirVer/ultisnips'

" testing
" Plug 'tpope/vim-dispatch'
" Plug 'radenling/vim-dispatch-neovim'
Plug 'neomake/neomake'
Plug 'janko/vim-test'

" Surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'

" linting and fixing
" Plug 'dense-analysis/ale'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'

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


" Syntax Highlighting
Plug 'neoclide/jsonc.vim'

"typescript syntax highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" graphql syntax highlighting
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'

" styled components syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color schemes
Plug 'joshdick/onedark.vim'

call plug#end()
