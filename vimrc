
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

no <C-j> <C-w>j| "switching to below window"
no <C-k> <C-w>k| "switching to above window"
no <C-l> <C-w>l| "switching to right window"
no <C-h> <C-w>h| "switching to left window"
inoremap jk <ESC>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
call plug#end()

autocmd vimenter * NERDTree
