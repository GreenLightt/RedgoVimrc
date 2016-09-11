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
