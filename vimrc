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

" Basic settings
set syntax=on
set paste
set number
set swapfile
set dir=~/.vim/swp
set tabstop=2
set autoindent
set copyindent
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

" Set clipboard
set clipboard=unnamedplus

" Set hidden for to keep buffers
set hidden

" Word Processing Mode
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu
com! WP call WordProcessorMode()
