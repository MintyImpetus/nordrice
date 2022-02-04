set spell spelllang=en_au
hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red guibg=red
hi SpellCap cterm=underline,bold ctermfg=white ctermbg=blue guibg=blue
hi SpellLocal cterm=underline,bold ctermfg=blue ctermbg=none guibg=red
hi SpellRare cterm=underline,bold ctermfg=red ctermbg=none guibg=red
inoremap jk <ESC>
syntax on
set number 
set noswapfile
set ignorecase

"Area to import vim-plug plugins
call plug#begin()

Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord
