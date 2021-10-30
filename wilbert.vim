"=============================================================================
" File: wilbert.vim
" Author: Dave Brown
" Created: a long time ago
"-----------------------------------------------------------------------------
" Normally, this file will reside in the vimfiles/plugins directory and be
" automatically sourced.  If not, you must manually source this file " using
" :source wilbert.vim
"
"=============================================================================

" Has this already been loaded?
if exists("loaded_wilbert")
  finish
endif

let loaded_wilbert=1

set noundofile

" let jedi#use_tabs_not_buffers=0

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

" Set up maps
"
set titlestring=%<%F
set diffopt=filler,vertical

if has("gui_running")
    set lines=60 columns=120
    set guifont=Lucida_Console:h9:cANSI
    colorscheme koehler
endif

if has('win32')
    set backupdir=C:/MinGW/msys/1.0/home/BRO9YOK/.vim/vimbackup//
    set directory=C:/MinGW\msys/1.0/home/BRO9YOK/.vim/vimbackup//
    set undodir=C:/MinGW/msys/1.0/home/BRO9YOK/.vim/undo//
else
    set backupdir=~/.vim/vimbackup//
    set directory=~/.vim/vimbackup//
"    set undodir=~/.vim/undo//
endif

set history=1000
set tags=./tags,../tags,~/tags
"set makeprg=g:\batch\rcmd.exe
"set errorformat=\"%f\"\\,\ line\ %l\ pos\ %c;\ (%t)\ %m
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set grepprg=grep\ -in
set grepformat=%f:%l:%m
set grepformat=%f:%l:%m,%l:%m

set cmdheight=3
set novb
set ic
"set smartcase
set noexpandtab
set nowrap
set hidden
set ts=4
set sw=4
set et
set sts=4

nnoremap <silent> <ESC><ESC> :noh<cr>
vnoremap <silent> # :s#^#\##<cr>:noh<cr>
vnoremap <silent> -# :s#^\###<cr>

"noremap <silent> ^[[1;5P :bp<cr>

noremap <silent> ¬ <C-]>
noremap <silent> <C-`> <C-t>
noremap <silent> <F1> :bn<cr>
noremap <silent> <S-F1> :bp<cr>
noremap <silent> <F2> :cn<cr>
noremap <silent> <S-F2> :cp<cr>
noremap <silent> <F3> :bd<cr>

noremap <silent> <F5> :Git<CR>


noremap <silent> <F10> :tn<cr>
noremap <silent> <S-F10> :tp<cr>

"noremap <silent> <F12> :!cls && python %<cr>
"noremap <silent> <S-F12> :! winpdb %<cr>
"noremap <silent> <C-F12> Oimport rpdb2; rpdb2.start_embedded_debugger()<esc>

"abbrev E Explore

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

autocmd FileType sh,c,cpp,java,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e

syntax on


