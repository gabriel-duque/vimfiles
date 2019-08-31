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

" Use relative line numbering but still show the current lineno
set number
set relativenumber

" Wrap columns at 80 columns (only display)
set wrap

" Always use a multiple of 'shiftwidth' when indenting with < or >
set shiftround

" Show current command line on bottom of screen
set showcmd

" Enable filetype indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" }}} !General options

" FileType-specific settings {{{
"
" Set foldmethod to marker for Vimscript files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}} !FileType-specfic settings

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
":inoremap jk <esc>

" Force myself to use the previous binding
":inoremap <esc> <nop>

" Switching to next and previous buffer
:nnoremap <leader>n :bn<cr>
:nnoremap <leader>p :bp<cr>
:nnoremap <leader>d :bd<cr>

" }}} !Actual mappings

" }}} !Mappings

" Status line {{{
" }}} !Status line

" TODO {{{
" 
" Status line
" File type specific s***
"
" }}}
