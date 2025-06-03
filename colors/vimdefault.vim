" vimdefault.vim - Simple Vim default colors for Neovim
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "vimdefault"

hi Normal       ctermfg=7   ctermbg=0
hi Comment      ctermfg=2
hi Constant     ctermfg=3
hi Identifier   ctermfg=6
hi Statement    ctermfg=4
hi PreProc      ctermfg=5
hi Type         ctermfg=2
hi Special      ctermfg=1
hi Underlined   ctermfg=4
hi Ignore       ctermfg=0
hi Error        ctermfg=15  ctermbg=1
hi Todo         ctermfg=0   ctermbg=3
