set guioptions-=T

set lines=90

set columns=150

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

set fileencodings=utf-8,cp932

set splitbelow

set nobackup

set noundofile

set noswapfile

set number

syntax on

set splitbelow

set wildmenu

set wildmode=list:full

autocmd GUIEnter * set transparency=210
