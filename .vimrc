"------------------- Standard-------------------
set relativenumber
set ma
au FileType type call SyntaxFoo()
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"------------------Aurelio.net-----------------

" creates viminfo to memorize info.
" will save searches /, copy (yy) from one
" file to the other (p)
set viminfo='10,\"30,:20,%,n~/.viminfo

" when open the file, the cursor shall be positioned
" where it was when the file were close
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

" F7: autocomplete a word that has been already used in the text
" F8: continuos completing the next words
imap <F7> <c-n>
imap <F8> <c-x><c-n>

" let me save the file with W and Q in capslock
"cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q


map ,d :r!date<cr>
      \:s/ \(...\) \(..\).*\(....\)$/, \2 de \1 de \3/<cr>
      \:nohl<cr>

"--------------------NORMINETTE------------------
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
set showcmd
" enable mouse control
set mouse=a
" make the 81st column turn red
set colorcolumn=81
" open close brackets and others
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" ------------------- VUNDLE ---------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'                 

"------------------- PLUGINS  ---------------------
"Better MatchUo
Plugin 'andymass/vim-matchup'
"Sensible Vim
Plugin 'tpope/vim-sensible'
"NerdTree 
Plugin 'scrooloose/nerdtree'
"Surround
Plugin 'tpope/vim-surround'

"JS Autocomplete
Plugin 'ternjs/tern_for_vim'

" Ack
Plugin 'mileszs/ack.vim'

"SuperTab
"Plugin 'ervandew/supertab'

" ## VISUAL ##
"Theme
Plugin 'dracula/vim'

"Commentary
Plugin 'tpope/vim-commentary'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" SetColors
 syntax on
 " set background=dark
 " color dracula
 set t_Co=256
 let g:dracula_italic = 0
 let g:dracula_colorterm = 0
 set termguicolors
 colorscheme dracula
 set guifont=Monaco:h19
 set antialias

 "SuperTab
" let g:SuperTabDefaultCompletionType = "context"


