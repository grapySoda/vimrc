set nocompatible

"----------------Plugin----------------"
filetype off

call plug#begin()

"Plug 'Valloric/YouCompleteMe'
"Plug 'dracula/vim', {'as':'dracula'}   "color scheme
Plug 'morhetz/gruvbox'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

call plug#end()
filetype indent on


"----------------Setting----------------"
colorscheme gruvbox
"colorscheme dracula

set enc=utf-8                          " 文字編碼加入 utf8
set ai                                 " 自動縮排
syntax on                              " 開啟上色模式
set background=dark                    " 啟用暗色背景模式
set cursorline                         " 啟用行游標提示
set t_Co=256
" set hls                              " 螢光筆標記關鍵字
set number                             " 顯示行號
set relativenumber                     " 顯示相對行號
set ic                                 " 搜尋不分大小寫
set expandtab                          " 使用空白取代 Tab
set tabstop=8                          " 4 個空白鍵取代 Tab
set shiftwidth=8                       " 縮排所需的空白鍵位元數


"----------------YCM----------------"
"let g:ycm_server_python_interpreter='/usr/bin/python3'
"let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_server_log_level = 'info'
"let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_complete_in_strings=1
"let g:ycm_key_invoke_completion = '<c-z>'
"set completeopt=menu,menuone
"
"noremap <c-z> <NOP>
"
"let g:ycm_semantic_triggers =  {
"           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"           \ 'cs,lua,javascript': ['re!\w{2}'],
"           \ }
"
"
"--------------vim-gutentags--------------"
"set tags=./.tags;,.tags
"
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
"
"let g:gutentags_ctags_tagfile = '.tags'
"
"let s:vim_tags = expand('~/.cache/tags')
"let g:gutentags_cache_dir = s:vim_tags
"
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
"if !isdirectory(s:vim_tags)
"   silent! call mkdir(s:vim_tags, 'p')
"endif
"--------------airline--------------"
set laststatus=2
let g:airline_theme='base16'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"--------------Nerdtree--------------"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"--------------Parentheses--------------"
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
inoremap {} {}<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
