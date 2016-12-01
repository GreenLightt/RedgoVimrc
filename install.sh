filepath=$(cd "$(dirname "$0")"; pwd)
cd $filepath

echo "set runtimepath+=$filepath

source ${filepath}/vimrcs/basic.vim
source ${filepath}/vimrcs/filetypes.vim
source ${filepath}/vimrcs/plugins_config.vim
source ${filepath}/vimrcs/extended.vim

try
source ${filepath}/my_configs.vim
catch
endtry" >> ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
