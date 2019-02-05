call plug#begin('~/.vim/plugged')

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Status bar
Plug 'itchyny/lightline.vim'

" Gitglitter
Plug 'airblade/vim-gitgutter'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Puppet plug
Plug 'rodjek/vim-puppet'

" vim-fugitive for git
Plug 'tpope/vim-fugitive'

" Plug
Plug 'chr4/nginx.vim'

call plug#end()

" Set for status
set laststatus=2

" Update for gitglitter
set updatetime=100

" Map for nerdtree
map <C-n> :NERDTreeToggle<CR>

" Map for fuzzyfinder
map <C-t> :FZF<CR>

set syntax=on
set paste
set number

" gVim
"colorscheme torte

set swapfile
set dir=~/.vim/swp
