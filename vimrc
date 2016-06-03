" default vimrc

" This must be first, because it changes other options as a side effect.
set nocompatible

" turn on syntax highlighting
syntax on


"Show incomplete cmds down the bottom
set showcmd
"Show current mode down the bottom
set showmode


" turn on line numbers
set nu

" turn on search highlighting
set hlsearch
" change the colors for search so the text is easier to read
hi Search cterm=NONE ctermfg=black ctermbg=yellow
" turn on incremental search highlighting
set incsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" automatically reload the .vimrc on every change (every write)
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set showmatch     " set show matching parenthesis

" set more useful stuff in the statusline
"set statusline=%F%m%r%h%w\ [FF=%{&ff}]\ [T=%Y]\ [A=\%03.3b]\ [H=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set cmdheight=1
set laststatus=2

" start scrolling when within 5 lines near the top/bottom
set scrolloff=5

" set indentation preferences
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" show whitespace in a helpful way
set list    
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" default the statusline to cyan on black when entering Vim
hi StatusLine ctermbg=Cyan ctermfg=Black

set statusline=%.20F         " Path to the file
set statusline+=%=           " switch to the right side of the screen
set statusline+=%y        " Filetype of the file
set statusline+=\        " space separtor
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
