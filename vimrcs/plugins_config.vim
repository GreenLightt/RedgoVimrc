let root_path = expand('%:p:h:h')
let bundle_path = root_path . '/bundle'

""""""""""""""""""""""""""""""
" => Load pathogen paths
"    解决每一个插件安装后文件分散到多个目录不好管理
""""""""""""""""""""""""""""""
call pathogen#infect(bundle_path . "/{}")
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => Load bundle paths
"   解决自动搜索及下载插件
""""""""""""""""""""""""""""""
let vundle_vim_path = root_path . '/bundle/Vundle.vim'
set rtp+=vundle_vim_path
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
nnoremap <F10> :exe 'NERDTreeToggle'<CR>

""""""""""""""""""""""""""""""
" 项目内搜索Ag
""""""""""""""""""""""""""""""
Bundle 'rking/ag.vim'

""""""""""""""""""""""""""""""
" 状态条加强
""""""""""""""""""""""""""""""
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
set laststatus=2
set ttimeoutlen=10
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

""""""""""""""""""""""""""""""
" 状态条加强 显示git分支
""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""
" 适合c++的大纲导航
""""""""""""""""""""""""""""""
Bundle 'majutsushi/tagbar'
nnoremap <F9> :exe 'TagbarToggle'<CR>
let g:tagbar_width=30    " 窗口宽度

""""""""""""""""""""""""""""""
" 有助于js 自动补全
""""""""""""""""""""""""""""""
Bundle 'ternjs/tern_for_vim'
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript setlocal omnifunc=tern#Complete


""""""""""""""""""""""""""""""
" mustache文件类型扩展
""""""""""""""""""""""""""""""
Bundle 'mustache/mustache'
Bundle 'mustache/vim-mustache-handlebars'
au BufNewFile,BufRead *.mustache set ft=mustache

""""""""""""""""""""""""""""""
" nerdtree树形目录
""""""""""""""""""""""""""""""
"Bundle 'scrooloose/nerdtree'
