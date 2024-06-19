if [ ! -d ~/dev_tools/nvim-linux64 ]; then
  wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz -O ~/dev_tools/nvim-linux64.tar.gz
  pushd ~/dev_tools
  tar xf nvim-linux64.tar.gz
  popd
  echo 'alias vim="~/dev_tools/nvim-linux64/bin/nvim"' >> ~/.bashrc
fi

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim
  cp vim/init.vim ~/.config/nvim
fi

if [ -e ~/.vimrc ]; then
  cp ~/.vimrc ~/.vimrc.bk
fi
cp ./vim/vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip install neovim

# tmux part
if [ -e ~/.tmux.conf ]; then
  cp ~/.tmux.conf ~/.tmux.conf.bk
fi
cp ./tmux/tmux.conf ~/.tmux.conf

echo 'alias tn="tmux new -s"' >> ~/.bashrc
echo 'alias tl="tmux list-session"' >> ~/.bashrc
echo 'alias ta="tmux -u -2 a -t"' >> ~/.bashrc

echo 'alias gs="git status"' >> ~/.bashrc
echo 'alias gb="git branch"' >> ~/.bashrc
echo 'alias gd="git diff"' >> ~/.bashrc

# for vim
sudo apt install universal-ctags
