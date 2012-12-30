" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

"set guifont=Inconsolata:h20            " Font family and font size.
set nocompatible                  " Must come first because it changes other options.
set guifont=Menlo:h19
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=35 columns=100          " Window dimensions.
" -------------
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
"set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set directory=/tmp//,.  " Keep swap files in one location
colorscheme topfunky-light
let mapleader=','

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
nmap <C-S-P> :call <SID>SynStack()<CR>

function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


command! -nargs=1 Bs :call BufSel("<args>")
autocmd FileType eruby setlocal ts=4 sts=4 sw=4 noexpandtab
set shiftwidth=4 softtabstop=4 expandtab

:set guioptions-=r                 " Don't show right scrollbar
colorscheme topfunky-light
