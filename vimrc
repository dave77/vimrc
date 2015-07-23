" This is vim not vi
set nocompatible

filetype plugin on
" Pathogen automatically runs installed bundles
call pathogen#infect()

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Random Envionment settings
set showmode
set ruler
set fileencoding=utf-8
set enc=utf-8
set backspace=2
set lazyredraw
set hidden
set history=500
set noerrorbells
set visualbell
set t_vb=
set tags=tags;/
set textwidth=72
if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/tmp
endif

set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to

set ofu=syntaxcomplete*Complete
set completeopt+=longest
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=3 " minimum lines to keep above and below cursor
set pastetoggle=<F8>

set laststatus=2 " Always 2 lines for status bar
set showmatch
set wrap

" Display Settings (including rotating theme)
let themeindex=0
function! RotateColorTheme()
   let y = -1
   while y == -1
      let colorstring = "black_angus#rdark#brookstream#colorful256#contrasty#icansee#jellybeans#slate2#wintersday#wombat256#wuye#xoria256#zenburn#"
      let x = match( colorstring, "#", g:themeindex )
      let y = match( colorstring, "#", x + 1 )
      let g:themeindex = x + 1
      if y == -1
         let g:themeindex = 0
      else
         let themestring = strpart(colorstring, x + 1, y - x - 1)
	 set nocursorline
         return ":colorscheme ".themestring
      endif
   endwhile
endfunction

set number

set guifont=Monospace\ 8
if has("gui_running")
   " Remove Toolbar
   set guioptions-=T
   set mouse=a
   set lines=40
endif

set background=dark
colorscheme wuye 

" Cool command completion stuff
set wildmenu
set wildmode=list:longest,full

" use seperate backup directory
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" search options: ignore case unless first letter is a Capital,
set ignorecase
set smartcase
set incsearch
set hlsearch

" Use linux clipboard
let g:clipbrdDefaultReg = '+'

" keyboard remapping
nnoremap <space> za

nnoremap ; :
nnoremap , ;

vnoremap ; :
vnoremap , ;

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

vnoremap k gk
vnoremap j gj
vnoremap gk k
vnoremap gj j

inoremap <c-s> <c-o>:w<cr> " Ctrl-s saves and continue editing

map <M-j> :bprevious<CR>
map <M-k> :bnext<CR>

map - :nohls<cr>

nnoremap <silent><F12> :execute RotateColorTheme()<CR>

:vnoremap < <gv
:vnoremap > >gv

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Next error!
map <C-n> :cn<CR>
map <C-m> :cp<CR>

" map @s to signed off line
nnoremap <silent> @s iSigned-off-by: David Wiltshire <dunlucky1@gmail.com><Esc>

" map <F4> to switch from .c to .h
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite C if ! &bin | silent! %s/\s\+$//ge | endif
autocmd BufRead,BufWrite C++ if ! &bin | silent! %s/\s\+$//ge | endif
autocmd BufRead,BufWrite python if ! &bin | silent! %s/\s\+$//ge | endif
autocmd BufRead,BufWrite perl if ! &bin | silent! %s/\s\+$//ge | endif

" formatting
syntax on
set shiftwidth=8
set tabstop=8
set softtabstop=8
set autoindent

au FileType C setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab cindent
au FileType Haskell setlocal shiftwidth=8 tabstop=8 softtabstop=8 expandtab
au FileType C++ setlocal cindent tabstop=4 expandtab shiftwidth
