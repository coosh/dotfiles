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

" puppet
Plug 'rodjek/vim-puppet'

call plug#end()

" Set for status
set laststatus=2

" Update for gitglitter
set updatetime=100

" Map for nerdtree
map <C-n> :NERDTreeToggle<CR>

" Map for fuzzyfinder
map <C-e> :FZF<CR>

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

" puppet
au BufNewFile,BufRead *.pp set syntax=puppet
au FileType puppet setlocal isk+=:
au FileType puppet nnoremap <c-]> :exe "tag " . substitute(expand("<cword>"), "^::", "", "")<CR>  
au FileType puppet nnoremap <c-w><c-]> :tab split<CR>:exe "tag " . substitute(expand("<cword>"), "^::", "", "")<CR>
let g:syntastic_mode_map = { 'passive_filetypes': ['puppet']  }

" Tags
command! MakeTags !ctags -R .
au FileType puppet setlocal isk+=:
set tags=./tags;
let g:tagbar_type_puppet = {
  \ 'ctagstype': 'puppet',
  \ 'kinds': [
    \'c:class',
    \'s:site',
    \'n:node',  
    \'d:definition',
    \'r:resource',
    \'f:default'
  \]
\}

" Word Processing Mode
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu
com! WP call WordProcessorMode()
