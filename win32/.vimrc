if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

"" ~ plugin option start ~

" Enable snipMate compatibility feature.
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

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : ''
\ }

"Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

"Recommended key-mappings.
"<CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
"<TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"<C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

  let g:neosnippet#enable_snipmate_compatibility = 1

  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
  let g:syntastic_ruby_checkers = ['rubocop']
  let g:syntastic_check_on_open=0 
  let g:syntastic_check_on_save=1 
  let g:syntastic_check_on_wq = 0 
  let g:syntastic_auto_loc_list=1 
  let g:syntastic_loc_list_height=6 
  set statusline+=%#warningmsg# 
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_javascript_checkers = ['eslint'] "ESLintを使う
  let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': []
      \ }
  let g:syntastic_mode_map = { 'mode': 'passive',
    \ 'active_filetypes': ['go'] }
  let g:syntastic_go_checkers = ['go', 'golint']
  
" Set async completion.
  let g:monster#completion#rcodetools#backend = "async_rct_complete"

" With neocomplete.vim
  let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

" With deoplete.nvim
  let g:monster#completion#rcodetools#backend = "async_rct_complete"
  let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

" jedi % jedi.vim

  nnoremap [jedi] <Nop>
  xnoremap [jedi] <Nop>
  nmap <Leader>j [jedi]
  xmap <Leader>j [jedi]

  let g:jedi#completions_command = "<C-Space>"    
  let g:jedi#goto_assignments_command = "<C-g>"   
  let g:jedi#goto_definitions_command = "<C-d>"   
  let g:jedi#documentation_command = "<C-k>"      
  let g:jedi#usages_command = "[jedi]n"
  let g:jedi#popup_select_first = 0
  let g:jedi#popup_on_dot = 1
  let g:jedi#auto_initialization = 1
  let g:jedi#rename_command = "<leader>R"
  
  autocmd FileType python let b:did_ftplugin = 1

  autocmd FileType python setlocal completeopt-=preview

        autocmd FileType python setlocal omnifunc=jedi#completions
        let g:jedi#completions_enabled = 0
        let g:jedi#auto_vim_configuration = 0


" JavaScript or Node.js

  autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
  if !exists('g:neocomplcache_omni_functions')
  let g:neocomplcache_omni_functions = {}
  endif
  let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'

  let g:node_usejscomplete = 1

" unite.vim
  noremap <C-U><C-F> :Unite -buffer-name=file file<CR>
  noremap <C-U><C-R> :Unite file_mru<CR>

  au FileType unite nnoremap <silent> <buffer> <expr> <C-i> unite#do_action('split')
  au FileType unite inoremap <silent> <buffer> <expr> <C-i> unite#do_action('split')

  au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
  au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
  
  let twitvim_browser_cmd = 'C:\Program Files (x86)\Mozilla Firefox\firefox.exe' "
  let twitvim_force_ssl = 1 
  let twitvim_count = 40

  let g:precious_enable_switch_CursorMoved = { '*': 0, 'help': 1 }
  autocmd MyAutoCmd InsertEnter * :PreciousSwitch
  autocmd MyAutoCmd InsertLeave * :PreciousReset

  autocmd filetype coffee,javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

  "Go
  let g:go_fmt_fail_silently = 1
  let g:go_list_type = "quickfix"

" ~ plugins option end.~

" dein settings {{{

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.vim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

if dein#load_state(s:dein_dir)

  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#begin(s:dein_dir)
  cd ~/Documents
  call dein#add('scrooloose/nerdtree')
  let NERDTreeShowHidden = 1
  autocmd VimEnter * execute 'NERDTree'
  
  call dein#end()
  
  filetype plugin indent on
  syntax enable

  call dein#save_state()
  
if dein#check_install()
  call dein#install()
endif

endif

call dein#clear_state()
