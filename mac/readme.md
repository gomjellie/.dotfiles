# mac 환경설정



## 아래 블로그에서 기본 설정들, 프로그램들 깔기

[subicura 블로그](https://subicura.com/2017/11/22/mac-os-development-environment-setup.html) 참조해서 설치

이것만 해도 엄청 쓸만해진다.! (감사합니다..... subicura HEROES.....)



## Terminal

### zsh theme

~/.zshrc 에서 

ZSH_THEME="agnoster" 로 테마 변경한다. (폰트가 안깔려 있으면 따로 설치해서 터미널 폰트 변경 해줘야함)

[powerline font](https://github.com/powerline/fonts)에서 설치할 수 있다.


### terminal profile

cherryMelon.terminal 파일을 terminal profile 에 추가한다.

## Finder

Quick Look 기능을 더 많은 파일에서 쓸수있거나, 기존보다 더 좋게 훑어볼 수 있다.

[quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)에서 플러그인들을 찾아서 설치하면 된다.

설치 완료후 터미널에 다음 스크립트를 입력하면 재부팅하지 않고 바로 사용할 수 있다.

```sh
qlmanage -r
```

## vim

기본 vim 버리고 neovim 으로 덮어쓰기

```sh
brew install neovim 

```

설치 완료후 ~/.zshrc 에 다음 항목들을 추가한다.

```sh
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR=/usr/local/bin/nvim

```

[amix의 vimrc](https://github.com/amix/vimrc) 깔면 대부분의 vim 설정이 끝난다.

~/.vim_runtime/vimrcs/basic.vim 에 따로 추가하고 싶은 옵션을 추가한다.

set nu 를 추가하면 line number 가 왼쪽에 표기된다.

###.nvimrc 설정

```sh
mkdir -p ~/.config/nvim
echo 'source ~/.nvimrc' > ~/.config/nvim/init.vim

ln -s ~/.vimrc ~/.nvimrc # make link file ~/.nvimrc -> ~/.vimrc
```



## Applications

### Screen Capture

스크린샷 저장위치 지정

```sh
defaults write com.apple.screencapture location YOUR_LOCATION_HERE
```

### Xcode

if your os version is too lower to get download xcode on app store

go https://developer.apple.com/download/more and
 
download 8.2.1 for OS X 10.11.6(el capitan).

### Kakao Talk

```sh
defaults write com.kakao.KakaoTalkMac HideMenuBarIconMenu YES
```

터미널에 위의 내용을 넣으면 상단바의 아이콘을 클릭했을때 바로 카톡이 뜨게 바꿀 수 있다!

### iina

무료 + 오픈소스 동영상 플레이어

```shell
brew cask install iina
```



### thefuck

오타나 잘못된 명령어를 쳐서 다시 한번 처음부터 제대로 명령어를 완성해야 하는경우 fuck 이라고 치면 알아서(거의 인공지능) 제 의도를 파악해서 명령어를 추천해준다.

예를 들어서 vim 을 빨리쳐서 vmi 로 친경우 fuck -> vim으로 내가 원하던 명령어를 유추해줌. 진짜 개꿀따리임;;

```shell
brew install thefuck
```



### autoenv 설치하기

.env 가 있으면 알아서 불러주는 개꿀템이다.

```shell
brew install autoenv
```



### Go2Shell 설치하기

Finder 에서 탐색하던 디렉토리에서 바로 터미널을 시작시켜주는 어플이다.

[백투더맥 블로그 링크](http://macnews.tistory.com/1216)를 참고해서 설치.

## Git keychain

terminal 에서 git sign in 을 mac keychain 으로 관리하게 해줌

```sh
git config --global credential.helper osxkeychain
```

[help.github.com](https://help.github.com/en/articles/caching-your-github-password-in-git)를 참고


## keyboard settings



### CapsLock -> Ctrl 변경

Settings -> Keyboard -> Modifier Keys : Caps Lock 을 ^ Control 로 지정해 준다.



### Function Keys

Settings -> Keyboard -> Keyboard 탭에 Use F1, F2, etc. keys as standard function keys 체크.

### ₩표시 \`로 변경

```sh
cd ~/Library
mkdir KeyBindings
touch DefaultkeyBinding.dict
```

```
{
    "₩" = ("insertText:", "`");
}
```

## [MacGesture](https://github.com/MacGesture/MacGesture)

<img width="500" alt="d135c549-92df-488b-af10-24dff21c9d3e" src="https://user-images.githubusercontent.com/13645032/218003769-7e384920-4153-41a3-beaf-42da5dab9615.png">
