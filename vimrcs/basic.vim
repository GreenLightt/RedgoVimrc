"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置行号和相对行号
set number
set relativenumber

" Sets how many lines of history VIM has to remember
" 使用:history查看历史命令
set history=100

" Enable filetype plugins
" 打开文件类型检测，加载允许文件类型插件，允许不同类型文件定义不同的缩进格式
filetype plugin indent on

" Set to auto read when a file is changed from the outside
" 文件在Vim之外修改过，自动重新读入
set autoread

" With a map leader it's possible to do extra key combinations
" 设置mapleader变量
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
" 当距离屏幕上下边界还有7行时，滚屏
set so=7

" Always show current position
" 显示标尺，当前行列以及scroll的百分比
set ruler

" Height of the command bar
" 设置vim下命令行的高度
set cmdheight=2

" A buffer becomes hidden when it is abandoned
" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l

" Ignore case when searching
" 搜索忽视大小写
set ignorecase

" When searching try to be smart about cases 
" 搜索的时候至少包含一个大写字母时才对大小写敏感
set smartcase

" Highlight search results
" 搜索高亮
set hlsearch

" Makes search act like search in modern browsers
" 加强式寻找功能,在键入 patern 时会立即反应移动至目前键入之 patern 上
set incsearch 

" Don't redraw while executing macros (good performance config)
" 当运行宏时，不重绘
set lazyredraw 

" For regular expressions turn magic on
" 支持正则搜索
set magic

" Show matching brackets when text indicator is over them
" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch 

" Add a bit extra margin to the left
" 设置折叠栏的宽度
set foldcolumn=1

" No annoying sound on errors
" 报错时没有铃声
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
" 设置文件格式
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
" 关闭文件备份，不生成.swap文件
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
" 使用空格替换tab
set expandtab

" Be smart when using tabs ;)
" 在行和段开始处使用制表符
set smarttab

" 1 tab == 4 spaces
" shiftwidth => 程序中自动缩进所使用的空白长度, tabstop => 定义tab所等同的空格长度
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set linebreak
"set textwidth=500

set ai "Auto indent  自动缩进
set si "Smart indent 智能缩进
set wrap "Wrap lines 软折行

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
" 分屏间切换的快捷方式
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

