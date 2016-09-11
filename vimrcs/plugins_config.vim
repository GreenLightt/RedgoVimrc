""""""""""""""""""""""""""""""
" => Load pathogen paths 
"    解决每一个插件安装后文件分散到多个目录不好管理
""""""""""""""""""""""""""""""
call pathogen#infect('~/redgo_vimrc/bundle/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => Load bundle paths 
"   解决自动搜索及下载插件
""""""""""""""""""""""""""""""
set rtp+=~/redgo_vimrc/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'


""""""""""""""""""""""""""""""
" => Load emmet paths 
" 快速输入html标签
""""""""""""""""""""""""""""""
Bundle 'mattn/emmet-vim'

""""""""""""""""""""""""""""""
" css3 语法支持
""""""""""""""""""""""""""""""
Bundle 'hail2u/vim-css3-syntax'
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END

""""""""""""""""""""""""""""""
" less语法支持
""""""""""""""""""""""""""""""
Bundle 'groenewege/vim-less'

""""""""""""""""""""""""""""""
" js语法高亮
""""""""""""""""""""""""""""""
Bundle 'pangloss/vim-javascript'
let javascript_enable_domhtmlcss = 1

""""""""""""""""""""""""""""""
" 文件树形目录
""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
