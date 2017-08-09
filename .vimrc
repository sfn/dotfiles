" ---------------
"  ~/.vimrc
"  --------------

" Carica i plugin tramite pathogen
execute pathogen#infect()

" Colorazione sintassi
syntax on
" Usa il mouse
set mouse=a
" Evidenzia i numeri di riga
set number              
set cursorline          
hi CursorLine cterm=NONE ctermbg=NONE
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=236
hi Visual ctermbg=238 cterm=none ctermfg=none
" 80 caratteri per riga
set colorcolumn=81
hi ColorColumn ctermbg=236
" Gestione tab ed identazione
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype indent plugin on

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled=1
set laststatus=2
set noshowmode
set ttimeoutlen=10
