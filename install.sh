cd ~/redgo_vimrc

echo 'set runtimepath+=~/redgo_vimrc

source ~/redgo_vimrc/vimrcs/basic.vim
source ~/redgo_vimrc/vimrcs/filetypes.vim
source ~/redgo_vimrc/vimrcs/plugins_config.vim
source ~/redgo_vimrc/vimrcs/extended.vim

try
source ~/redgo_vimrc/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
