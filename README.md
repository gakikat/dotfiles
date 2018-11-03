example init.vim

  ```
  1 "initialize NeoVim
  2 set encoding=utf-8
  3 scriptencoding utf-8
  4 set runtimepath+=~/dotfiles/nvim
  5 runtime! /plugin/*.vim
  6 runtime! /usr/*.vim
  7 
  8 "initialize Deoplete
  9 let g:deoplete#enable_at_startup = 1
 10 
 11 "initialize EasyTags
 12 let g:easytags_always_enabled = 1
 13 let g:easytags_updatetime_min = 5000
 14 let g:easytags_events = ['BufWritePost']
 15 
 16 "initialize NERDTree
 17 autocmd StdinReadPre * let s:std_in=1
 18 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 19 autocmd StdinReadPre * let s:std_in=1
 20 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
 21 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 22 
 23 "initialize seiya
 24 let g:seiya_auto_enable=1
```
