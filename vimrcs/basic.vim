"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 常用
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置行号和相对行号
set number
set relativenumber

" 使用:history查看历史命令
set history=100

" 设置分隔符
set cc=80

" 打开文件类型检测，加载允许文件类型插件，允许不同类型文件定义不同的缩进格式
filetype plugin indent on

" 文件在Vim之外修改过，自动重新读入
set autoread

" 设置mapleader变量
let mapleader = "-"
let g:mapleader = "-"

" 重新加载vim配置文件
:nnoremap <leader>sv :source $MYVIMRC<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM 用户界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 当距离屏幕上下边界还有7行时，滚屏
set so=7

" 显示标尺，当前行列以及scroll的百分比
set ruler

" 设置vim下命令行的高度
set cmdheight=2

" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l

" 搜索忽视大小写
set ignorecase

" 搜索的时候至少包含一个大写字母时才对大小写敏感
set smartcase

" 搜索高亮
set hlsearch

" 加强式寻找功能,在键入 patern 时会立即反应移动至目前键入之 patern 上
set incsearch

" 当运行宏时，不重绘
set lazyredraw

" 支持正则搜索
set magic

" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

" 设置折叠栏的宽度
set foldcolumn=1

" 报错时没有铃声
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色和字体
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启语法高亮
syntax enable

" 设置颜色主题及颜色数目
try
    colorscheme desert
    set t_Co=256
catch
endtry

" 设置背景颜色
set background=dark

" 设置编码格式为utf8
set encoding=utf8

" 设置文件格式
set ffs=unix,dos,mac

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文件，备份及撤销
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭文件备份，不生成.swap文件
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文本、缩进、Tab制表符相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在行和段开始处使用制表符
set smarttab

" 使用空格替换tab
set expandtab

" 定义tab所等同的空格长度
set tabstop=4
set softtabstop=4

" 自动缩进
set ai

" 智能缩进
set si

" 程序中自动缩进所使用的空白长度
set shiftwidth=4

" 软折行
set wrap

" Linebreak on 500 characters
set linebreak
"set textwidth=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 移动
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 将软折行看成是一行，在竖直移动时，可以进入下一行软折行中
map j gj
map k gk

" 分屏间切换的快捷方式
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 搜索
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert 模式下的Map映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在编辑状态下，键入jk，同键入Esc键
:inoremap jk <esc>

" 在编辑状态下 键入Esc键，等同于无操作，即失效
":inoremap <esc> <nop>
