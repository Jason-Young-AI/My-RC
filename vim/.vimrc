set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" plugin on GitHub repo

Plugin 'morhetz/gruvbox'
Plugin 'aperezdc/vim-template'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'previm/previm'
Plugin 'tyru/open-browser.vim'
Plugin 'prabirshrestha/asyncomplete.vim'

Plugin 'lervag/vimtex'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/c.vim'
Plugin 'jmcantrell/vim-virtualenv'

Plugin 'Igorjan94/codeforces.vim'
Plugin 'Raimondi/delimitMate'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'


" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'


" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'


" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
syntax on
colorscheme gruvbox
set background=dark
set number
set showcmd
set showmatch
set foldenable
set foldmethod=manual
set foldlevel=100
set nobackup
set noswapfile
set noerrorbells
set ignorecase
set hlsearch
set incsearch
set cursorline
set expandtab
set fileformat=unix
set scrolloff=3
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,fold:-,diff:-
set laststatus=2
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12


autocmd FileType c,cpp,python,php,java,sh set shiftwidth=4
autocmd FileType c,cpp,python,php,java,sh set tabstop=4
autocmd FileType c,cpp,python,php,java,sh set softtabstop=4

autocmd FileType tex,javascript,html,css,xml,markdown set shiftwidth=2
autocmd FileType tex,javascript,html,css,xml,markdown set tabstop=2
autocmd FileType tex,javascript,html,css,xml,markdown set softtabstop=2


let g:email = 'AI.Jason.Young@outlook.com'
let g:username = 'Jason Young (杨郑鑫)'
let g:mapleader = "\\"
let g:maplocalleader = "_"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd w
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd w | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeNaturalSort = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 23
let g:NERDTreeWinPos = 'right'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '!',
    \ "Unknown"   : "?"
    \ }

let g:tex_flavor = 'latex'
let g:vimtex_view_method = "mupdf"

"let g:gitgutter_highlight_lines = 1
"let g:gitgutter_override_sign_column_highlight = 0
"highlight SignColumn ctermbg=darkgrey
"highlight SignColumn guibg=darkgrey

"function CurWinSetSignCol()
"    if exists('&signcolumn')
"      set signcolumn=yes
"    else
"      let w:gitgutter_sign_column_always = 1
"    endif
"endfunction
"
let g:vimtex_compiler_latexmk = {
  \ 'backend' : 'process',
  \ 'background' : 1,
  \ 'build_dir' : '',
  \ 'callback' : 1,
  \ 'continuous' : 1,
  \ 'executable' : 'latexmk',
  \ 'options' : [
  \   '-xelatex',
  \   '-verbose',
  \   '-file-line-error',
  \   '-synctex=1',
  \   '-interaction=nonstopmode',
  \ ],
  \}

" Key Mapping

nmap fw :w<CR>
nmap fq :q<CR>
nmap fwq :wq<CR>
nmap gs :Gstatus<CR>

nmap ffc :call Compile()<CR>
nmap ffr :call Run()<CR>

func! Compile()
    exec "w"

    let compiler_name = ''
    let compile_flag = '-g --static -lm -Wall -Wextra'
    let special_compile_flag = ''

    if &filetype == 'c'
        let compiler_name = 'gcc'
        let special_compile_flag = '-std=c11'
    endif

    if &filetype == 'cpp'
        let compiler_name = 'g++'
        let special_compile_flag = '-O2 -std=c++11'
    endif

    if compiler_name != ''
        let compile_command = compiler_name . ' % -o %< ' . compile_flag
        if special_compile_flag != ''
            let compile_command = compile_command . ' ' . special_compile_flag
        endif
        exec '!clear && '.compile_command
    endif
endfunc

func! Run()
    exec "!clear && ./%<"
endfunc

autocmd BufNewFile *.cpp 0r ~/.vim/Template/tpl.cpp | autocmd! BufNewFile

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:templates_no_autocmd = 0
let g:templates_directory = ['~/.vim/Templates',]
let g:templates_user_variables = []
let g:templates_use_licensee = 1
let g:templates_detect_git = 1

"function EditNewFilename()
"  let l:filename = input("filename: ")
"  exec ':wincmd l'
"  execute "edit " . l:filename
"endfunction
"
"call NERDTreeAddMenuItem({
"  \ 'text': 'New with (t)emplate',
"  \ 'shortcut': 't',
"  \ 'callback': 'EditNewFilename' })
"
"if ! g:templates_no_autocmd
"  augroup Templating
"    autocmd!
"    autocmd BufNewFile,BufReadPost * call <SID>TLoad()
"  augroup END
"endif

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
