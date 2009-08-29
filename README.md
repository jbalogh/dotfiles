This is my treasure trove.  I `git clone` it to `~/.dotfiles` and then do

    cd ~/.dotfiles
    for f in * .*
        ln -s ~/.dotfiles/$f ~/$f
