" plugin manager
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'preservim/nerdtree'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'HiPhish/ncm2-vlime'
Plug 'ncm2/ncm2-bufword'

call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

set number
syntax on

set tabstop=4
set shiftwidth=4
set smartindent
set expandtab

inoremap <S-Tab> <C-D>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

silent! nmap <C-p> :NERDTreeToggle<CR>

map <F3> :NERDTreeToggle<CR>

let g:NERDTreeMapActivatedNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
let g:python3_host_prog="/home/sam/anaconda3/bin/python3"
filetype indent off

colorscheme desert
