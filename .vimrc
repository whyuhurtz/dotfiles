" ---------- CONFIG START
set number " Add number line.
set nocompatible " no compatible with vi.

" detect filetype / extension.
filetype on
filetype plugin on
filetype indent on

" syntax highlighting.
syntax on

" add cursor highlight of current line.
set cursorline

" using tab as indent.
set noexpandtab
set tabstop=2
set shiftwidth=2

set wrap
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.o

" Change path of ~/.viminfo file.
set history=1000

" Status line.
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" ---------- CONFIG END

" ---------- PLUGINS START
call plug#begin('~/.vim/plugged')

" Basic Vim plugins.
Plug 'preservim/nerdtree'	" File explorer.
Plug 'junegunn/fzf.vim'		" Cari file cepat dengan Fuzzy Finder.
Plug 'tpope/vim-sensible'	" Pengaturan dasar Vim yang lebih baik.
Plug 'tpope/vim-surround'	" Memudahkan manipulasi tanda kutip dan bracket.

" Auto-completion and LSP.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fancy Vim status line.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git integration with Vim.
Plug 'airblade/vim-gitgutter'

" Emmeth plugins for HTML stuff.
Plug 'mattn/emmet-vim'

" Vim theme.
Plug 'morhetz/gruvbox' " Gruvbox

call plug#end()
" ---------- PLUGINS END

" ---------- KEYBINDINGS START
" NERDTree plugin keybindings.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" ---------- KEYBINDINGS END
