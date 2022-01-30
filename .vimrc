" auto install the plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" auto install solarized8
if empty(glob('~/.vim/pack/themes/opt/solarized8'))
    silent !git clone https://github.com/lifepillar/vim-solarized8.git
      \ ~/.vim/pack/themes/opt/solarized8
endif

" plugin manager
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" enable line numbers
set nu rnu

" enable syntax
syntax on

set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

inoremap <S-Tab> <C-D>

silent! nmap <C-p> :NERDTreeToggle<CR>

map <F3> :NERDTreeToggle<CR>

" basic pair completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" configure nerdtree keybindings
let g:NERDTreeMapActivatedNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" set colorscheme
set background=dark
colorscheme solarized8

