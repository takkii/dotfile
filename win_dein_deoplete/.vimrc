if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

let g:python3_host_prog='D:\python35\python.exe'
let g:deoplete#enable_at_startup = 1

" For snippet_complete marker.
if has('conceal')
set conceallevel=2 concealcursor=i
endif

" Use Unite:
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

let g:quickrun_config={'*': {'split': ''}}
set splitbelow

source ~/.vim/repos/github.com/takkii/vim-com/plugins/refac.vim

set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim')
  call dein#begin('~/.vim')

  " Let dein manage dein
  call dein#add('~/.vim/repos/github.com/Shougo/dein.vim')

  " Repo:

  call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('takkii/Bignyanco')
  call dein#add('takkii/vim-com')
  call dein#add('thinca/vim-quickrun')
  call dein#add('astashov/vim-ruby-debugger')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('tpope/vim-fugitive')

  " Required:
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
