

set shiftwidth=4
set tabstop=4
set nu
set incsearch
set ignorecase
set laststatus=1

set nocompatible
set encoding=utf-8
set et ts=4 sts=4 sw=4
set fdm=syntax fdl=100
set nu ru ls=2
set hls is si
set cinoptions=j1,(0,ws,Ws,g0
set formatoptions-=cro
set timeout nottimeout ttimeoutlen=10
set mouse=a
set listchars=tab:▸\ ,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set list
set nohidden
set nobackup
set nowritebackup
set updatetime=300
set cmdheight=1
set shortmess+=c


syntax on
filetype on
filetype plugin on
filetype indent on


nnoremap Z ZZ
nnoremap Q :wa!<CR>:qa!<CR>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $



" for vim-airline:
let g:airline#extensions#coc#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
inoremap kj <ESC>
map <C-A> ggVGY
" <\> + <i> change the buffer
nmap <silent> <leader>1 <Plug>AirlineSelectTab1
nmap <silent> <leader>2 <Plug>AirlineSelectTab2
nmap <silent> <leader>3 <Plug>AirlineSelectTab3
nmap <silent> <leader>4 <Plug>AirlineSelectTab4
nmap <silent> <leader>5 <Plug>AirlineSelectTab5
nmap <silent> <leader>6 <Plug>AirlineSelectTab6
nmap <silent> <leader>7 <Plug>AirlineSelectTab7
nmap <silent> <leader>8 <Plug>AirlineSelectTab8
nmap <silent> <leader>9 <Plug>AirlineSelectTab9
nnoremap <silent> <F9> :wa<CR>:NERDTreeToggle<CR><C-w>l:Vista!!<CR><C-w>h


call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()
