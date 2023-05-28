if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

# load all files from .shell/login.d directory
if [ -d $HOME/.shellrc/login.d ]; then
  for file in $HOME/.shellrc/login.d/*.sh; do
    source $file
  done
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#auto pull dotfiles from git
cd ~/.shellrc && git pull >>/dev/null; cd ~
