" vim-plug https://github.com/junegunn/vim-plug/wiki/tips

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'purescript-contrib/purescript-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

set relativenumber
set background=dark
