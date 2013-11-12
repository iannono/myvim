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
set showcmd
set fileencodings=ucs-bom,utf-8,chinese
set clipboard+=unnamed "windows

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
set splitbelow
set splitright

" store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim/.undo
set undofile
set undolevels=1000
set undoreload=10000

" color
set t_Co=256
color harlem-nights
" color molokai
" color zenburn
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
inoremap <leader>l <esc>A
inoremap <leader>h <esc>I
nnoremap <leader>d <esc>^v$h

nnoremap <tab> %  

" edit mapping 
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
noremap <leader>ev :split $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>so <c-w>o 
inoremap <leader>= <%=  %><esc>hhi
inoremap <leader>- <%  %><esc>hhi
nnoremap <leader>= i<%=  %><esc>hhi
nnoremap <leader>- i<%  %><esc>hhi
inoremap <leader>a <esc>la
inoremap <leader><leader> <esc>la,
inoremap <leader>k <esc>O
nnoremap <leader>k O
inoremap <leader>j <esc>o

" for elixir
inoremap <leader>1 &1
inoremap <leader>2 &2


" normal mapping
inoremap <leader>w <esc>:w<cr>
nnoremap <leader>w :w<cr>
nmap <leader>q :q<cr>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"copyed from Gary bernhardt's vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

" status line
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Close all other windows, open a vertical split, and open this file's test
" alternate in it.
nnoremap <leader>s :call FocusOnFile()<cr>
function! FocusOnFile()
  vsp %
  " normal! v 
  " normal! l
  call OpenTestAlternate()
  " normal! h
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr> 
