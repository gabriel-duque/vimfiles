"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Description:
"   This is my vimrc file
"
" Maintainer:
"   Gabriel "zuh0" Duque
"   <gabriel.duque@lse.epita.fr>
"
" Acknowledgments:
"   A big part of this configuration was done using the book
"   'Learn Vimscript the Hard Way':
"   http://learnvimscriptthehardway.stevelosh.com
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General options {{{

" Vimscript file settings
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Use relative line numbering but still show the current lineno
set number
set relativenumber

" Wrap columns at 80 columns (only display)
set wrap

" Always use a multiple of 'shiftwidth' when indenting with < or >
set shiftround

" }}} !General options

" FileType-specific settigs {{{
" }}}

" Mappings {{{

"" Variables {{{

" Set <leader> to <space> and remove <space>'s default usage in normal mode
let mapleader = "\<space>"
:nnoremap <space> <nop>

" Set <localleader> to \ for filetype specific bindings
let maplocalleader = "\\"

" }}} !Variables

"" Actual mappings {{{

" Open vimrc file in split window
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Map jk to <esc> in insert mode
:inoremap jk <esc>

" Force myself to use the previous binding
:inoremap <esc> <nop>

" }}} !Actual mappings

" }}} !Mappings

" Status line {{{
" }}}
