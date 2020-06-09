call plug#begin('~/.vim/plugged')

""" {{{ 文本对象

    Plug 'kana/vim-textobj-user'

    " e 整个文件
    Plug 'kana/vim-textobj-entire'

    " i 缩进
    Plug 'kana/vim-textobj-indent'

    " y 关键字
    Plug 'kana/vim-textobj-syntax'

    " f 函数
    " Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }

    " , 参数
    Plug 'sgur/vim-textobj-parameter'

    " o 创建对象
    Plug 'someoneonsmile/vim-textobj-objnew', { 'rtp': 'textobj-objnew','for':['java'] }

""" }}}

""" {{{ 主题
    
    set termguicolors
    
    " gruvbox
    Plug 'morhetz/gruvbox'
    autocmd vimenter * colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark = 'sort'

""" }}}

" emmet
Plug 'mattn/emmet-vim'

" NERDTree
Plug 'preservim/nerdtree'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <C-h> :NERDTreeToggle<CR>
tmap <C-h> :NERDTreeToggle<CR>

" mru
Plug 'vim-scripts/mru.vim'
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>

" ctrlp
Plug '/ctrlpvim/ctrlp.vim'

" 表格对齐
Plug 'godlygeek/tabular'

" vim repeat
Plug 'tpope/vim-repeat'

" vim surround
Plug 'tpope/vim-surround'

" 单词变体/改变连词方式(Coercion)
" 1) :Subvert/child{,ren}/adult{,s}/g
" 2) MixedCase (crm), camelCase (crc), snake_case (crs), UPPER_CASE (cru), 
"   dash-case (cr-), dot.case (cr.), space case (cr<space>), 
"   and Title Case (crt) are all just 3 keystrokes away.
Plug 'tpope/vim-abolish'

" 注释
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1 
map <C-m> <Plug>NERDCommenterToggle

" auto pair
Plug 'jiangmiao/auto-pairs'

" vim-go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" rust
Plug 'rust-lang/rust.vim'

" flake8
Plug 'nvie/vim-flake8'

" less
Plug 'groenewege/vim-less'

" git
Plug 'airblade/vim-gitgutter'

" 切换终端
Plug 'PangPangPangPangPang/vim-terminal'

" deoplete 自动补全
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" let g:deoplete#enable_at_startup = 1

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
            \'coc-tsserver', 
            \'coc-eslint',
            \'coc-prettier',
            \'coc-html', 
            \'coc-css', 
            \'coc-json', 
            \'coc-emmet', 
            \'coc-snippets', 
            \'coc-ultisnips', 
            \'coc-neosnippet', 
            \'coc-yaml', 
            \'coc-highlight', 
            \'coc-markdownlint']

" define text-obj
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Ack
" Plug 'mileszs/ack.vim'

" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <silent> <leader>f :FZF<CR>
noremap <leader>c :Ag<Space>

" tabline
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" vim easy align
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" wx 小程序支持
Plug 'chemzqm/wxapp.vim'

" 交换行
Plug 'someoneonsmile/vim-plugs', {'rtp': 'swap-line'}
" nmap <c-j> <Plug>(SWAPLINE_swapDown)
" nmap <c-k> <plug>(SWAPLINE_swapUp)
imap <c-j> <plug>(SWAPLINE_swapDown)
imap <c-k> <plug>(SWAPLINE_swapUp)

call plug#end()

