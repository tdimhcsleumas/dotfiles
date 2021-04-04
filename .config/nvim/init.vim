" auto install the plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin manager
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

call plug#end()


set number
syntax on

set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

inoremap <S-Tab> <C-D>

silent! nmap <C-p> :NERDTreeToggle<CR>

map <F3> :NERDTreeToggle<CR>

" basic pair completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

let g:NERDTreeMapActivatedNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

colorscheme desert
