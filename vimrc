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

" Display {{{

" Use relative line numbering but still show the current lineno
set number
set relativenumber

" Wrap columns at 80 columns (only display)
set wrap

" Show current command line on bottom of screen
set showcmd

" Don’t update screen during macro and script execution.
set lazyredraw

" Enable syntax highlighting
syntax on

" Use an encoding that supports unicode.
set encoding=utf-8

" Avoid wrapping a line in the middle of a word.
set linebreak

" The number of screen lines to keep above and below the cursor.
set scrolloff=10

" Make vertical split panes open on right side instead of left
set splitright

" Make horizontal split open below instead of on top
set splitbelow

" }}} !Display

" Indentation {{{

" Enable filetype indentation
filetype plugin indent on

" New lines inherit the indentation of previous lines
set autoindent

" Write spaces instead of tabs
set expandtab

" When shifting lines, round the indentation to the nearest multiple
" of “shiftwidth.”
set shiftround

" When shifting, indent using 4 spaces
set shiftwidth=4

" Insert “tabstop” number of spaces when the “tab” key is pressed.
set smarttab

" Indent using four spaces.
set tabstop=4

" }}} !Indentation

" Search {{{

" Enable search highlighting.
set hlsearch

" Ignore case when searching.
set ignorecase

" Incremental search that shows partial matches.
set incsearch

" Automatically switch search to case-sensitive when search query contains an
" uppercase letter.
set smartcase

" }}} !Search

" }}} !General options

" Functions {{{

" Remove trailing whitespace in file
function s:RemoveTrailingSpace()
    if !&binary && &filetype != 'diff'
        let save_cursor = getpos(".")
        %s/\s\+$//e
        call setpos('.', save_cursor)
    endif
endfunction

" Remove empty lines at the end of file
function! s:RemoveLinesEnd()
    if !&binary && &filetype != 'diff'
        let save_cursor = getpos(".")
        :silent! %s#\($\n\s*\)\+\%$##
        call setpos('.', save_cursor)
    endif
endfunction

" Clean function for trailing whitespace and empty lines
function! CleanFile()
    if !&binary && &filetype != 'diff'
        :call s:RemoveLinesEnd()
        :call s:RemoveTrailingSpace()
    endif
endfunction

" }}} !Functions

" FileType-specific settings {{{

" Remove trailing whitespace and blank lines at end of source code
augroup filetype_misc
    autocmd!
    autocmd BufWritePre *.py,*.c,*.cc,*.h*,*.*sh :silent! call CleanFile()<cr>
augroup END

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

" Switching to next and previous buffer
:nnoremap <leader>n :bn<cr>
:nnoremap <leader>p :bp<cr>
:nnoremap <leader>d :bd<cr>

" Horizontal split
:nnoremap <leader>h :split 

" Vertical split
:nnoremap <leader>v :vertical split 

" Clean file by removing trailing whitespace and empty lines at end of file
:nnoremap <silent> <leader>c :call CleanFile()<cr>

" }}} !Actual mappings

" }}} !Mappings

" Status line {{{
" }}} !Status line

" TODO {{{

" Status line
" File type specific s***
" More mappings

" }}}
