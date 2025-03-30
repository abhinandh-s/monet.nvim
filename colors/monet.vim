" Monet - A dark colorscheme for Neovim
" Author: Abhinandh S
" License: MIT

if exists('g:colors_name')
  highlight clear
endif

if exists('syntax_on')
  syntax reset
endif

set termguicolors
let g:colors_name = 'monet'

lua require('monet').setup()

" vim: sw=2 ts=2 et
