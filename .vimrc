call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'fatih/molokai'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neocomplete.vim'
call plug#end()

" ***************** General stuff ***************** "
" enable molokai "
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" Automatically enable neocomplete
let g:neocomplete#enable_at_startup = 1

" Quick window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ******************** Golang  ******************** "

" enable save on build"
set autowrite

" enable some highlighting "
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" show tab as 4 spaces "
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

" autocall metalinter on save "
let g:go_metalinter_autosave = 1

" commands to open alternate files "
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" automatically show function signature under cursor "
let g:go_auto_type_info = 1
set updatetime=100

" highlight same identifier "
let g:go_auto_sameids = 1

" ******************** NerdTree ******************* " 

" Autostart "
autocmd vimenter * NERDTree

" NERDTree on <leader>t and <leader>f
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
