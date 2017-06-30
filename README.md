# settings-etc
programming tools setting files

# clone my files
```
$ git clone https://github.com/gomjellie/settings-etc
```
# change directory to settings-etc
```
$ cd ./settings-etc
```
# install zsh

mac:
```
$ brew install zsh 
```
debian:
```
$ sudo apt-get install zsh
```

# set zsh as default shell
```
$ sudo chsh -s $(which zsh)
```
# install oh-my-zsh
```
$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
# set zsh-theme

copy theme
```
$ cp ./shellder.zsh-theme ~/.oh-my-zsh/themes/
```

open ~/.zshrc in vim
```
$ vim ~/.zshrc

change 10th line to ZSH_THEME="shellder"
:wq  
```
# run zsh to show changes
```
$ zsh
```
# install vundle
```
$ git clone  https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
copy .vimrc_init to ~/.vimrc
```
$ cp ./.vimrc_init ~/.vimrc
```
open ~/.vimrc in vim
```
$ vim ~/.vimrc
```
type :PluginInstall
```
:PluginInstall
```

# install pathogen
```
$ mkdir -p ~/.vim/autoload ~/.vim/bundle

$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

# get final vimrc

copy vimrc to ~/.vimrc
```
$ cp vimrc ~/.vimrc
```
open ~/.vimrc in vim
```
$ vim ~/.vimrc
```

install plugins
```
:PluginInstall
```
