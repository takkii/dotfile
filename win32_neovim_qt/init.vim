if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.config/nvim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

if dein#load_state(s:dein_dir)

  let g:rc_dir    = expand('~/.config/nvim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
 let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

" ~ plugin option start ~

  let g:python3_host_prog='C:/Python35/python3.exe'
  let g:python_host_prog='C:/Python27/python.exe'
  
  let g:deoplete#enable_at_startup = 1

  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
  let g:syntastic_ruby_checkers = ['rubocop']

let g:neosnippet#enable_snipmate_compatibility = 1

" Plugin key-mappings.
 imap <C-k>     <Plug>(neosnippet_expand_or_jump)
 smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
   \: "\<TAB>"

" For snippet_complete marker.
   if has('conceal')
   set conceallevel=2 concealcursor=i
   endif

" With deoplete.nvim
  let g:monster#completion#rcodetools#backend = "async_rct_complete"
  let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

let g:quickrun_config={'*': {'split': ''}}

" ~ plugin option end . ~

  call dein#begin(s:dein_dir)
  call dein#add('scrooloose/nerdtree')
  autocmd VimEnter * execute 'NERDTree'
  
  call dein#end()
  call dein#save_state()
if dein#check_install()
  call dein#install()
endif

endif

let g:precious_enable_switch_CursorMoved = { '*': 0, 'help': 1 }
autocmd MyAutoCmd InsertEnter * :PreciousSwitch
autocmd MyAutoCmd InsertLeave * :PreciousReset

cd ~/Documents

"".gvimrc setting start!

set splitbelow

set nobackup

set noundofile

set noswapfile

syntax enable

set number

set wildmenu

set wildmode=list:full

"" .gvimrc setting end.

call dein#clear_state()