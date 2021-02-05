" 行番号表示
set number
" インデント幅
set shiftwidth=2
" タブキー押下時のインデント幅
set softtabstop=2
"ファイル内にあるタブ文字の表示幅
set tabstop=2
" タブの代わりにスペースを入れる
set expandtab
" カラースキームの設定
set background=dark
colorscheme hybrid
" jk
inoremap <silent> jk <ESC>

" coc の設定
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definitition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" floating window の透明度
set pumblend=0

" ------------------------------------------------------------------------------------------
" dein
 if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
  if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
  endif
  if dein#check_install()
    call dein#install()
  endif
  filetype plugin indent on
  syntax enable
