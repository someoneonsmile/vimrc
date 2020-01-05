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


" 使用系统剪贴板
set clipboard+=unnamed
set ts=4
set nu

map q :q<CR>

" map w :w<cr>
" map b <c-v>

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

" 切换目录树窗口
map <C-h> :NERDTreeToggle<CR>
" 最近文件
map <C-e> :MRU<CR>


" 切换窗口 
" ^[ = Alt
map <A-w> <C-w>w
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l
map <A-+> <C-w>+
map <A-=> <C-w>=
map <A--> <C-w>-
map <A-<> <C-w><
map <A->> <C-w>>

map <A-L> <C-w>L
map <A-H> <C-w>H
map <A-J> <C-w>J
map <A-K> <C-w>K

map <A-s> <C-w>s
map <A-v> <C-w>v

" 切换标签页
map t :tabe<space>
map H gT
map L gt

" 编辑器模式下复制新行
imap <C-d> <Esc>Vypi
