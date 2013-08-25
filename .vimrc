execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader=","

set expandtab
set tabstop=2
set shiftwidth=2

"colorscheme blackboard  
"set guifont=Inconsolata:h13:cANSI "for windows
set guifont=Monaco     
set gfw=Monaco
set nu!
set showmatch
set incsearch
set hlsearch
set cursorline
set cuc
set cmdheight=2
set showtabline=2
set winwidth=79
set shell=bash
set mouse=a
set writebackup
set nobackup
set noswapfile
set smartindent
set backspace=2
set autoindent
set nocompatible
set fileencodings=ucs-bom,utf-8,chinese
set clipboard+=unnamed "windows

" store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" color
:set t_Co=256
:set background=dark
:color grb256

" move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" rename current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr> 
          
" map key
nmap <leader>w :w<cr>
nmap <leader>e :e<Space>
nmap <leader>q :q<cr>

let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1 

function ClosePair(char)
      if getline('.')[col('.') - 1] == a:char
          return "\<Right>"
      else
          return a:char
      endif
endf


"----ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

"----javascript config
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"----for netrw
let g:netrw_winsize = 30
