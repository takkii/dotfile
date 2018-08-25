let $LANG='ja_JP.UTF-8'
set encoding=utf-8

source $VIMRUNTIME\delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME\menu.vim

if exists('b:did_ftplugin_python')
    finish
endif
let b:did_ftplugin_python = 1

if version < 600
  syntax clear
elseif exists('b:current_after_syntax')
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

let &cpo = s:cpo_save
unlet s:cpo_save

let java_highlight_debug=1
let java_highlight_functions=1
let java_space_errors=1

set guioptions-=T

set lines=90

set columns=150

set splitbelow

set nobackup

set noundofile

set noswapfile

set number

syntax on

colorscheme mrkn256

set wildmenu

set wildmode=list:full

set guifont=Myrica_M:h12:cSHIFTJIS:qDRAFT

cd ~/Dropbox/arpeggio