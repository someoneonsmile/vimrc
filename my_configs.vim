" 使用系统剪贴板
set clipboard=unnamedplus
set ts=4
set nu

map q :q<CR>
map <leader>q :q!<CR>
map <leader>w :w!<CR>

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
tmap <C-h> :NERDTreeToggle<CR>

" 最近文件
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>

" 命令行上下行切换
cmap <C-p> <Up>
cmap <C-n> <Down>

" ^[ = Alt
" 切换窗口 
map w <C-w>w
map p <C-w>p
map h <C-w>h
map j <C-w>j
map k <C-w>k
map l <C-w>l

" 移动窗口
map H <C-w>H
map J <C-w>J
map K <C-w>K
map L <C-w>L

" 分屏当前文件
map s <C-w>s
map v <C-w>v

" 窗口高度 ("=" 使所有窗口等宽高) 
map + <C-w>+
map = <C-w>=
map - <C-w>-
map < <C-w><
map > <C-w>>

" 移动窗口
map H <C-w>H
map J <C-w>J
map K <C-w>K
map L <C-w>L

" 分屏
map s <C-w>s
map v <C-w>v
map o <C-w>o
map c <C-w>c

" 终端模式
set termwinkey=<C-w>
" tmap <Esc> <C-\><C-n>
tmap w <C-w>w
tmap p <C-w>p
tmap h <C-w>h
tmap j <C-w>j
tmap k <C-w>k
tmap l <C-w>l
tmap + <C-w>+
tmap = <C-w>=
tmap - <C-w>-
tmap < <C-w><
tmap > <C-w>>

" 移动窗口
tmap H <C-w>H
tmap J <C-w>J
tmap K <C-w>K
tmap L <C-w>L

" 分屏
tmap s <C-w>s
tmap v <C-w>v
tmap o <C-w>o
tmap c <C-w>c

" 窗口宽度
map < <C-w><
map > <C-w>>


" 切换标签页
" map t :tabe<space> 会影响 't' 的使用, 改为 <A-t> => <C-w>t
map t <C-w>t
tmap t <C-w>t
map H gT
map L gt

" 编辑器模式下复制新行
imap <C-d> <Esc>Vypi
