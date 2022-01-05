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
call plug#begin(stdpath('config').'/plugged')
	" I hate vim themes
	Plug 'preservim/nerdtree'						" NERDTree
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync'
	Plug 'preservim/nerdcommenter'					" Comment code
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'					" Airline
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'						" Autopairs
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Complete
	Plug 'github/copilot.vim'					" Copilot
call plug#end()

" Vim key mappings
map <C-p> :NERDTreeToggle<CR>
map <C-S-`> :terminal powershell<CR>
nmap <M-Right> :vertical resize +1<CR> 		
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>
nnoremap <C-Tab> :bn<CR>

" Vim themes suck
set background=light

" NERDTree settings
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
	\ }
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
	\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
let g:nerdtree_sync_cursorline = 1

" Airline settings
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#whitespace#enabled=0


" End of the file xd
