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

"""}}}

" emmet
Plug 'mattn/emmet-vim'

" NERDTree
Plug 'preservim/nerdtree'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

" 注释
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1 
map <C-m> <Plug>NERDCommenterToggle

" vim-go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" 切换终端
Plug 'PangPangPangPangPang/vim-terminal'

" Ack
" Plug 'mileszs/ack.vim'

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

" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <silent> <leader>f :FZF<CR>
noremap <leader>c :Ag<Space>

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

