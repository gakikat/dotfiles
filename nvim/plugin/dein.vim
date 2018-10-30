if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/katsuhiro/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/katsuhiro/.cache/dein')
  call dein#begin('/home/katsuhiro/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/katsuhiro/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('joshdick/onedark.vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-easytags')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('miyakogi/seiya.vim')
  "Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
