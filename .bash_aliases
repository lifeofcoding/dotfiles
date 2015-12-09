# .bash_aliases

if [[ "$OSTYPE" =~ "darwin" && -x /usr/local/bin/gls && -x /usr/local/bin/gdircolors ]]; then
    test -r ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
    alias ll='gls -laF --color=auto'
    alias ls='gls --color=auto'
elif [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ll='ls -laF --color=auto'
    alias ls='ls --color=auto'
elif [[ "$OSTYPE" =~ "darwin" ]]; then
    alias ll='ls -laF -G'
    alias ls='ls -G'
fi

if [[ "$OSTYPE" =~ "darwin" ]]; then
    alias finder_hide='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
    alias finder_show='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
    alias md5sum='md5'
    alias screenlock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
fi

if [[ "$DESKTOP_SESSION" =~ "gnome" ]]
then
    alias screenlock='gnome-screensaver-command --activate'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias jconsole_socks="jconsole -J-DsocksProxyHost=localhost -J-DsocksProxyPort=1080 127.0.0.1:1234 &"
alias vi='vim'

