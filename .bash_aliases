# .bash_aliases

if [[ "$OSTYPE" =~ "darwin" && -x /usr/local/bin/gls && -x /usr/local/bin/gdircolors ]]; then
    test -r ~/.dotfiles/.dircolors && eval "$(gdircolors -b ~/.dotfiles/.dircolors)" || eval "$(gdircolors -b)"
    alias ll='gls -laF --color=auto'
    alias ls='gls --color=auto'
elif [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dotfiles/.dircolors && eval "$(dircolors -b ~/.dotfiles/.dircolors)" || eval "$(dircolors -b)"
    alias ll='ls -laF --color=auto'
    alias ls='ls --color=auto'
elif [[ "$OSTYPE" =~ "darwin" ]]; then
    alias ll='ls -laF -G'
    alias ls='ls -G'
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

