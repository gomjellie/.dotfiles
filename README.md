# settings-etc
programming tools setting files

###1. clone my files

>$ git clone https://github.com/gomjellie/settings-etc

###0.9 change directory to settings-etc

>cd ./settings-etc

###0. install zsh

>on mac

>$ brew install zsh 

>on debian

>$ sudo apt-get install zsh

###0.5 set zsh as default shell

>$ chsh -s $(which zsh)

###1. install oh-my-zsh

>$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

###2. copy shellder.zsh-theme & set as zsh_theme

>cp ./shellder.zsh-theme ~/.oh-my-zsh/themes/

###2.1 open ~/.zshrc in vim

>vim ~/.zshrc

>change 10th line to ZSH_THEME="shellder"

>:wq  

###2.2 run zsh to show changes

>$ zsh

###2. install vundle

>$ git clone  https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

###3. copy .vimrc_init to ~/.vimrc

>$ cp ./.vimrc_init ~/.vimrc

###4. open ~/.vimrc in vim

>$ vim ~/.vimrc

###5. type :PluginInstall

> :PluginInstall

> when you hit : in vim you'll get into command mode

> keep type PluginInstall

> then hit Enter Key

> wait! this takes somewhat long time

> at last install you need to type your git id and passwd 

> but it's not necessary if you don't want that just hit enter twice

>:wq to exit vim

###6. install pathogen

>$ mkdir -p ~/.vim/autoload ~/.vim/bundle

>$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

###5. copy vimrc to ~/.vimrc

>$ cp vimrc ~/.vimrc

###6. open ~/.vimrc in vim

>$ vim ~/.vimrc

> don't close vim and keep go

###7. install plugins

> :PluginInstall

> in vim just type :PluginInstall as you did at 5th step then enter

>:wq to quit vim

