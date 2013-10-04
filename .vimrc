execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader=","

set expandtab
set tabstop=2
set shiftwidth=2

"set guifont=Inconsolata:h13:cANSI "for windows
set guifont=Monaco     
set gfw=Monaco
set nu!
set showmatch
set incsearch
set hlsearch
set cursorline
set cuc
set number
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
set scrolloff=5
set nostartofline
"set paste
set showcmd
set fileencodings=ucs-bom,utf-8,chinese
set clipboard+=unnamed "windows

" set winwidth=84
" set winheight=5
" set winminheight=5
" set winheight=999
" set splitbelow
" set splitright

" store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim/.undo
set undofile
set undolevels=1000
set undoreload=10000

" color
:set t_Co=256
:color jellybeans
" colorscheme jellybeans 

" move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l 

nnoremap <c-e> 3<c-e>
nnoremap <c-y> 3<c-y>
vnoremap <c-e> 3<c-e>
vnoremap <c-y> 3<c-y>

noremap <leader>h ^
noremap <leader>l $

nnoremap <tab> %  

" edit mapping
map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>so <c-w>o 
inoremap <esc> <esc>:w<cr>

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
          
" normal mapping
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>t :w\|:! rspec spec<cr>

imap <Tab> <C-N>
imap <S-Tab> <C-P>
vmap > >gv
vmap < <gv 

" map for ragtag
imap <leader>x <c-x>

" tab mapping
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1 

"----ctrlp config
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=tmp/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
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

" Test helpers from Gary Bernhardt's screen cast:
" https://www.destroyallsoftware.com/screencasts/catalog/file-navigation-in-vim
" https://www.destroyallsoftware.com/file-navigation-in-vim.html
function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo
    let rspec_bin = FindRSpecBinary(".")
    exec ":!time NOEXEC=0 " . rspec_bin . a:filename " --backtrace"
endfunction

function! FindRSpecBinary(dir)
  if filereadable(a:dir . "/bin/rspec")
    return a:dir . "/bin/rspec "
  elseif filereadable(a:dir . "/.git/config")
    " If there's a .git/config file, assume it is the project root;
    " Just run the system-gem installed rspec binary.
    return "rspec "
  else
    " We may be in a project sub-dir; check our parent dir
    return FindRSpecBinary(a:dir . "/..")
  endif
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_spec_file = match(expand("%"), '_spec.rb$') != -1
    if in_spec_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

" Run this file
map <leader>m :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>. :call RunNearestTest()<cr>
" Run all test files
map <leader>a :call RunTests('spec')<cr>
