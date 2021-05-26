" vim-plug https://github.com/junegunn/vim-plug/wiki/tips

let g:vimspector_enable_mappings = 'HUMAN'

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'purescript-contrib/purescript-vim'
Plug 'rust-lang/rust.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'puremourning/vimspector'

call plug#end()

set number relativenumber
set nu rnu
set background=dark

" JSON
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 expandtab

" C#
autocmd FileType cs setlocal shiftwidth=4 softtabstop=4 expandtab
