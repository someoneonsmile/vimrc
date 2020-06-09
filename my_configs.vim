" GUI {{{
    " colorscheme Tomorrow-Night

    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    " 不显示工具/菜单栏
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " 使用内置 tab 样式而不是 gui
    set guioptions-=e
    set nolist

    " 字体
    set guifont=Consolas:h12

    " 全屏
    au GUIEnter * simalt ~x
" }}}

" General {{{
    set nocompatible
    set nobackup
    set noswapfile
    set history=1024
    set autochdir
    set whichwrap=b,s,<,>,[,]
    set nobomb
    set backspace=indent,eol,start whichwrap+=<,>,[,]
    set encoding=utf-8
    " 设置 alt 键不映射到菜单栏
    set winaltkeys=no
" }}}


" device 相关 {{{
    " 提示的时候预览有问题, 关掉
    set completeopt-=preview
    autocmd CompleteDone * pclose

    " 设置 python3 支持
    let &pythonthreedll = 'D:\Program Files (x86)\Python37-32\python37.dll'
    let g:python3_host_prog = 'D:\Program Files (x86)\Python37-32\python.exe'

    " shell
    " set shell=powershell
" }}}


" leader key
let mapleader=","

" 使用系统剪贴板
set clipboard+=unnamed
set ts=4
set nu

set foldlevelstart=999

" 强制保存/退出 {{{
    map <leader>q :q!<CR>

    " 文件保存没有权限时
    " :W sudo saves the file 
    " (useful for handling the permission-denied error)
    command! W w !sudo tee % > /dev/null
" }}}


" 语法折叠 {{{
    set foldmethod=syntax
    set foldlevelstart=999
" }}}


" 使光标位置屏幕中间位置
map j gjzz
map k gkzz
map * *zz
map # #zz
map n nzz
noremap <S-n> <S-n>zz
noremap <C-o> <C-o>zz
noremap <C-i> <C-i>zz

" 命令行上下选择
cmap <C-p> <Up>
cmap <C-n> <Down>

" 切换目录树窗口
map <C-h> :NERDTreeToggle<CR>
tmap <C-h> :NERDTreeToggle<CR>

" 最近文件
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>

" 注释
map <C-m> <Plug>NERDCommenterToggle

" 打开的 buffer
map <c-b> :CtrlPBuffer<cr>

" 切换窗口 
" ^[ = Alt
map <^[-w> <C-w>w
map <^[-p> <C-w>p
map <^[-h> <C-w>h
map <^[-j> <C-w>j
map <^[-k> <C-w>k
map <^[-l> <C-w>l
map <^[-+> <C-w>+
map <^[-=> <C-w>=
map <^[--> <C-w>-
map <^[-<> <C-w><
map <^[->> <C-w>>

" <C-w> o 关闭其它所有窗口 :only
" :qa 关闭所有分屏
map <^[-H> <C-w>H
map <^[-L> <C-w>L
map <^[-J> <C-w>J
map <^[-K> <C-w>K
map <^[-T> <C-w>T

map <^[-s> <C-w>s
map <^[-v> <C-w>v
map <^[-c> <C-w>c
map <^[-o> <C-w>o


" 终端模式
set termwinkey=<C-w>
tmap <Esc> <C-\><C-n>
tmap <^[-w> <C-w>w
tmap <^[-p> <C-w>p
tmap <^[-h> <C-w>h
tmap <^[-j> <C-w>j
tmap <^[-k> <C-w>k
tmap <^[-l> <C-w>l
tmap <^[-+> <C-w>+
tmap <^[-=> <C-w>=
tmap <^[--> <C-w>-
tmap <^[-<> <C-w><
tmap <^[->> <C-w>>

tmap <^[-L> <C-w>L
tmap <^[-J> <C-w>J
tmap <^[-H> <C-w>H
tmap <^[-K> <C-w>K
tmap <^[-T> <C-w>T

tmap <^[-s> <C-w>s
tmap <^[-v> <C-w>v
tmap <^[-c> <C-w>c
tmap <^[-o> <C-w>o


" 切换标签页
nnoremap <leader>t :tabe<space>
map H gT
map L gt

" 编辑器模式下复制新行
imap <C-d> <Esc>Vypi

" 添加文件后缀类型
set suffixesadd+=.js

