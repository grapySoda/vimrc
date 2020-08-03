set nocompatible

"----------------Plugin----------------"
filetype off

call plug#begin()

"if has('nvim')
"    Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"else
"    Plug 'shougo/deoplete.nvim'
"    Plug 'roxma/nvim-yarp'
"    Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'Valloric/YouCompleteMe'
"Plug 'shougo/deoplete-clangx'
Plug 'morhetz/gruvbox'

call plug#end()
filetype indent on
"----------------Plugin----------------"


"----------------Setting----------------"
colorscheme gruvbox

set enc=utf-8                          " 文字編碼加入 utf8
"set pyxversion=3
"let g:python3_host_prog="/usr/bin/python3"
set ai                                 " 自動縮排
syntax on                              " 開啟上色模式
set background=dark                    " 啟用暗色背景模式
set cursorline                         " 啟用行游標提示
set t_Co=256
" set hls                              " 螢光筆標記關鍵字
set number                             " 顯示行號
"set relativenumber                     " 顯示相對行號
set ic                                 " 搜尋不分大小寫
set expandtab                          " 使用空白取代 Tab
set tabstop=4                          " 4 個空白鍵取代 Tab
set shiftwidth=4                       " 縮排所需的空白鍵位元數
"----------------Setting----------------"


"----------------deoplete----------------"
"let g:deoplete#enable_at_startup = 1
"let g:clang_library_path='/usr/lib/llvm-7/lib'
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')
"
"call deoplete#custom#var('clangx', 'default_c_options', '')
"call deoplete#custom#var('clangx', 'default_cpp_options', '')
"----------------deoplete----------------"

let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
"--------------Parentheses--------------"
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
inoremap {} {}<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
"--------------Parentheses--------------"
