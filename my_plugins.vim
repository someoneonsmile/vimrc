
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
    Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }

    " , 参数
    Plug 'sgur/vim-textobj-parameter'

"""}}}

" emmet
Plug 'mattn/emmet-vim'

" 注释
Plug 'preservim/nerdcommenter'

" vim-go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" 切换终端
Plug 'PangPangPangPangPang/vim-terminal'

call plug#end()
