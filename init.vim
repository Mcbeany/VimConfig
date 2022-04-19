" General settings
set mouse=a
set tabstop=4
set shiftwidth=4
set number
set relativenumber
set autoindent
set showmatch
set laststatus=2
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set startofline
set autoread
syntax on

" Plugins
call plug#begin()
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdcommenter'
	Plug 'github/copilot.vim'
call plug#end()

" Vim key mappings
nmap <C-l> :vertical resize +1<CR> 		
nmap <C-h> :vertical resize -1<CR>
nmap <C-j> :resize +1<CR>
nmap <C-k> :resize -1<CR>
nmap <space>e <Cmd>CocCommand explorer --no-reveal-when-open<CR>

" Airline settings
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#whitespace#enabled=0
