colorscheme jellybeans

set guioptions-=T  "remove toolbar
set guioptions-=m  "remove menu bar

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

set showtabline=2
set guioptions-=T
set guioptions-=m

let g:jellybeans_overrides = {
\    'Todo': { 'guifg': 'FFFFFF', 'guibg': '',
\              'ctermfg': 'White', 'ctermbg': 'Black',
\              'attr': 'bold' 
\     },
\    'Comment': { 'guifg': '79d2ea', 'guibg': '',
\              'ctermfg': 'White', 'ctermbg': 'Black',
\              'attr': 'bold' 
\     }
\}

colorscheme jellybeans
