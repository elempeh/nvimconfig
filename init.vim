set hlsearch			" Highlight search
set mouse=a			" Enable mouse click
set autoindent			" Ident same as last row
set clipboard=unnamedplus 	" Use system clipboard
set ignorecase			" Case-insensitive
set relativenumber

call plug#begin("~/.vim/plugged")
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
call plug#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
