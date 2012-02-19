#In your ~/ create symlink for you dot files

ln -nfs ~/work/dotfiles/emacs.d ~/.emacs.d
ln -nfs ~/work/dotfiles/emacs.d/.emacs ~/.emacs

ln -nfs ~/work/dotfiles/vimfiles/ ~/.vim
ln -nfs ~/work/dotfiles/vimrc ~/.vimrc
ln -nfs ~/work/dotfiles/gvimrc ~/.gvimrc

ln -nfs ~/work/dotfiles/ruby/pryrc ~/.pryrc
ln -nfs ~/work/dotfiles/ruby/autotest ~/.autotest


ln -nfs ~/work/dotfiles/git/gitconfig ~/.gitconfig
ln -nfs ~/work/dotfiles/git/gitignore_global ~/.gitignore_global

ln -nfs ~/work/dotfiles/ssh/config ~/.ssh/config

ln -nfs ~/work/dotfiles/bash_profile ~/.bash_profile
ln -nfs ~/work/dotfiles/bashrc ~/.bashrc

ln -nfs ~/work/dotfiles/tmux.conf ~/.tmux.conf

ln -nfs ~/work/dotfiles/zshrc ~/.zshrc
