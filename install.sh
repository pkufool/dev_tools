sudo apt install neovim

echo 'alias vim=nvim' >> ~/.bashrc

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim
  cp vim/init.vim ~/.config/nvim
fi

if [ -e ~/.vimrc ]; then
  cp ~/.vimrc ~/.vimrc.bk
fi
cp ./vim/vimrc ~/.vimrc

# pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init - bash)"' >> ~/.bashrc

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# python build deps
sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev


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

# wssh
pip install webssh
wssh --address=0.0.0.0 --port=8888 --encoding=utf-8 --font=SourceCodePro-Regular.ttf

