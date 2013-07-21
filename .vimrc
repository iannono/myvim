execute pathogen#infect()
syntax on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2

colorscheme blackboard  
set guifont=Monaco     
set gfw=Monaco
set nu!
set showmatch
set cursorline
set cuc
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

map <c-s> :w<cr> 

let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

set lines=60 columns=120

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
let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

