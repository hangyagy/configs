" Pathogen
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set ignorecase		" Do case insensitive matching

set tabstop=4
set shiftwidth=4
set smartindent
set number

au BufRead,BufNewFile *.twig set filetype=htmljinja

autocmd FileType {xml,xslt} map <F10> :%!xmllint --format %<CR>

nmap <leader>l :set list!<CR>

set listchars=tab:\|\ ,trail:·,eol:¬
"set listchars=tab:▸\ ,trail:·,eol:¬

map <leader>t :Tabularize /=><CR>
map <leader>T :Tabularize /=<CR>


" tab navigation like firefox
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

cabbrev nt NERDTree
let g:NERDTreeChDirMode=2

au FileType ruby setl sw=2 sts=2 et
au FileType eruby setl sw=2 sts=2 et

set background=dark

colorscheme elflord

" Syntastic (Syntax checker)
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_javascript_checkers = ['jshint']

" Snips
let g:snips_author = 'UJLAKY Tibor <tujlaky@plex.hu>'

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](\.(git|svn)|node_modules|bower_components|dist|\.tmp|articles|attachments|cache|logs|log|articles-longid|sitemap|resources)$'
let g:ctrlp_working_path_mode = 0


" ctrlp-tjump
nnoremap <c-]> :CtrlPFunky<cr>

" ctrlp-funky
let g:ctrlp_extensions = ['funky']

" Emmet
autocmd FileType html,css,scss,smarty,xml imap <buffer> <expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")

" vim-easymotion
nmap s <Plug>(easymotion-s)
map <Leader> <Plug>(easymotion-prefix)

"map j <Plug>(easymotion-j)
"map k <Plug>(easymotion-k)
map w <Plug>(easymotion-w)
map b <Plug>(easymotion-b)
map e <Plug>(easymotion-e)

let g:EasyMotion_startofline = 0

" Search
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" Disable cursors
let g:CursorDisable_errorMsg = "Use hjkl instead of cursor keys!"
noremap <Up> <ESC>:echo CursorDisable_errorMsg<CR>
noremap <Down> <ESC>:echo CursorDisable_errorMsg<CR>
noremap <Left> <ESC>:echo CursorDisable_errorMsg<CR>
noremap <Right> <ESC>:echo CursorDisable_errorMsg<CR>

" Lightline
set laststatus=2

" Hardmode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

command SpaceIndent :setl ts=2 sw=2 sts=2 et

" Vim instant markdown
let g:instant_markdown_autostart = 0

" vimgrep
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
