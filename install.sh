cd ~/RedgoVimrc

echo 'set runtimepath+=~/RedgoVimrc

source ~/RedgoVimrc/vimrcs/basic.vim
source ~/RedgoVimrc/vimrcs/filetypes.vim
source ~/RedgoVimrc/vimrcs/plugins_config.vim
source ~/RedgoVimrc/vimrcs/extended.vim

try
source ~/RedgoVimrc/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
