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
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
" }}}

set encoding=utf-8

" 提示的时候预览有问题, 关掉
set completeopt-=preview
autocmd CompleteDone * pclose

" 设置 python3 支持
let &pythonthreedll = 'D:\Program Files (x86)\Python37-32\python37.dll'
let g:python3_host_prog = 'D:\Program Files (x86)\Python37-32\python.exe'

" 使用系统剪贴板
set clipboard+=unnamed
set ts=4
set nu

" set shell=powershell

map <leader>q :q!<CR>
" map q :q<CR>
" map w :w<CR>
" map b <C-v>

" 使光标位置屏幕中间位置
map j gjzz
map k gkzz
map * *zz
map # #zz
map n nzz
map <S-n> <S-n>zz
map <C-o> <C-o>zz
map <C-i> <C-i>zz

map <C-a> ggVG

" 缩进
map <tab> V>
map <S-tab> V<
map <C-tab> gt

" 命令行上下选择
cmap <C-p> <Up>
cmap <C-n> <Down>


" 切换目录树窗口
map <C-h> :NERDTreeToggle<CR>
tmap <C-h> :NERDTreeToggle<CR>
" 最近文件
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>


" 切换窗口 
" ^[ = Alt
map <A-w> <C-w>w
map <A-p> <C-w>p
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l
map <A-+> <C-w>+
map <A-=> <C-w>=
map <A--> <C-w>-
map <A-<> <C-w><
map <A->> <C-w>>

" <C-w> o 关闭其它所有窗口 :only
" :qa 关闭所有分屏
map <A-H> <C-w>H
map <A-L> <C-w>L
map <A-J> <C-w>J
map <A-K> <C-w>K
map <A-T> <C-w>T

map <A-s> <C-w>s
map <A-v> <C-w>v
map <A-c> <C-w>c
map <A-o> <C-w>o


" 终端模式
set termwinkey=<C-w>
tmap <Esc> <C-\><C-n>
tmap <A-w> <C-w>w
tmap <A-p> <C-w>p
tmap <A-h> <C-w>h
tmap <A-j> <C-w>j
tmap <A-k> <C-w>k
tmap <A-l> <C-w>l
tmap <A-+> <C-w>+
tmap <A-=> <C-w>=
tmap <A--> <C-w>-
tmap <A-<> <C-w><
tmap <A->> <C-w>>

tmap <A-L> <C-w>L
tmap <A-J> <C-w>J
tmap <A-H> <C-w>H
tmap <A-K> <C-w>K
tmap <A-T> <C-w>T

tmap <A-s> <C-w>s
tmap <A-v> <C-w>v
tmap <A-c> <C-w>c
tmap <A-o> <C-w>o


" 切换标签页
map t :tabe<space>
map H gT
map L gt

" 编辑器模式下复制新行
imap <C-d> <Esc>Vypi

