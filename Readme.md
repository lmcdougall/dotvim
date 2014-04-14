##Installation:
	git clone git://github.com/lmcdougall/dotvim.git ~/.vim

####Create sysmlinks:
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

####To update the submodules (all plugins and bundles)
    cd ~/.vim
    git submodule init
    git submodule update

####Update all bundle from the root of .vim
    git submodule foreach git pull origin master