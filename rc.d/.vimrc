" MAIN SETTINGS ---------------------------------------------------------------- {{{

" Main Settings here

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Show Line Numbers
set number

" Enable Syntax
syntax enable

" Set Colorscheme
packadd! dracula
colorscheme dracula

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.


packadd! nerdtree
packadd! vim-airline
packadd! vim-airline-themes



" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" Map Ctrl-\ to toggle NerdTree Focus
map <silent> <C-\> :NERDTreeFocus<CR>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{


" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
