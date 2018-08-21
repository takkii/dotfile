if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

set runtimepath+=C:\ijaas\vim

let g:python3_host_prog='c:\python36_x64\python.exe'

" For snippet_complete marker.
if has('conceal')
set conceallevel=2 concealcursor=i
endif

" Use Neocomplete:
let g:neocomplete#enable_at_startup = 1

let g:neocomplete#sources#rsense#home_directory = 'C:\Users\sudok\Documents\Vim8\rsense-0.3\bin\rsense'
let g:rsenseUseOmniFunc = 1

let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
let g:neocomplete#sources#dictionary#dictionaries = {
 \   'ruby': $HOME . '\.vim\repos\github.com\takkii\ruby-dictionary3\autoload\source\ruby_method_complete',
 \ }

" Use Unite:
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

let twitvim_browser_cmd = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
let twitvim_force_ssl = 1 
let twitvim_count = 55

let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

set runtimepath+=c:\Users\sudok\.vim\repos\github.com\Shougo\dein.vim

" Required:
if dein#load_state('c:\Users\sudok\.vim')
  call dein#begin('c:\Users\sudok\.vim')

  " Let dein manage dein
  call dein#add('c:\Users\sudok\.vim\repos\github.com\Shougo\dein.vim')

  " Repo:
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc.vim')
  call dein#add('Shougo/vimshell.vim')
  call dein#add('takkii/ruby-dictionary3')
  call dein#add('thinca/vim-quickrun')
  call dein#add('twitvim/twitvim')
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
