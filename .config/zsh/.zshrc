#
# ~/.bashrc
#
[[ $- != *i* ]] && return

#--- Activate vim mode with <Esc>
# set -o vi
unsetopt nomatch

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#--- Config Alias ---#
alias cfg-bash='$EDITOR $HOME/.bashrc'
alias cfg-compton='$EDITOR $HOME/.config/compton.conf'
alias cfg-luakitbinds='$EDITOR $HOME/.config/luakit/binds.lua'
alias cfg-luakitglobals='$EDITOR $HOME/.config/luakit/globals.lua'
alias cfg-luakitmodes='$EDITOR $HOME/.config/luakit/modes.lua'
alias cfg-luakittheme='$EDITOR $HOME/.config/luakit/theme.lua'
alias cfg-luakitrc='$EDITOR $HOME/.config/luakit/rc.lua'
alias cfg-luakitwebview='$EDITOR $HOME/.config/luakit/webview.lua'
alias cfg-luakitwindow='$EDITOR $HOME/.config/luakit/window.lua'
alias cfg-mpd='$EDITOR $HOME/.mpd/mpd.conf'
alias cfg-ncmpcpp='$EDITOR $HOME/.ncmpcpp/config'
alias cfg-xmonad='$EDITOR $HOME/.xmonad/xmonad.hs'
alias cfg-rtorrent='$EDITOR $HOME/.rtorrent.rc'
alias cfg-vim='$EDITOR $HOME/.vimrc'
alias cfg-xinit='$EDITOR $HOME/.xinitrc'
alias cfg-xresources='$EDITOR $HOME/.Xresources'

#--- System Alias ---#
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias startx='startx $HOME/.config/x11/xinitrc'
alias vim='nvim'

#--- Livestream Alias
alias stream-claudi_bear='livestreamer -p "mpv -fs" twitch.tv/claudi_bear medium'
alias stream-fragbitelive='livestreamer -p "mpv -fs" twitch.tv/fragbitelive medium'
alias stream-grrrgabbie='livestreamer -p "mpv -fs" twitch.tv/grrrgabbie medium'
alias stream-Gunnermaniac3='livestreamer -p "mpv -fs" twitch.tv/Gunnermaniac3 medium'
alias stream-heaton='livestreamer -p "mpv -fs" twitch.tv/heatoncs medium'
alias stream-niffonen='livestreamer -p "mpv -fs" http://www.twitch.tv/niffonen medium'
alias stream-kittyplaysgames='livestreamer -p "mpv -fs" twitch.tv/kittyplaysgames medium'
alias stream-stamsite='livestreamer -p "mpv -fs" twitch.tv/stamsite medium'
alias stream-swebliss='livestreamer -p "mpv -fs" twitch.tv/swebliss medium'
alias stream-yunalescaswe='livestreamer -p "mpv -fs" twitch.tv/yunalescaswe medium'

#--- Color Alias ---#
alias ll='ls -lh --color=auto --group-directories-first'
alias la='ls -lhA --color=auto --group-directories-first'
alias config='/usr/bin/git --git-dir=$HOME/.config/.cfg/ --work-tree=$HOME'
alias dir='dir -lh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#--- App Alias ---#
alias feh='feh --keep-zoom-vp'
alias mpv='mpv -fs'
alias asciimpv='mpv -vo caca'

# Functions
if [ -f $HOME/.config/bash_include/theme_list ]; then . $HOME/.config/bash_include/theme_list; fi
if [ -f $HOME/.config/bash_include/theme_set ]; then . $HOME/.config/bash_include/theme_set; fi
# if [ -f $HOME/.config/bash_include/y2mp3 ]; then . $HOME/.config/bash_include/y2mp3; fi
if [ -f $HOME/.config/bash_include/sp ]; then . $HOME/.config/bash_include/sp; fi
if [ -f $HOME/.config/bash_include/extract_mp3 ]; then . $HOME/.config/bash_include/extract_mp3; fi
if [ -f $HOME/.config/bash_include/pipe ]; then . $HOME/.config/bash_include/pipe; fi
if [ -f $HOME/.config/bash_include/up ]; then . $HOME/.config/bash_include/up; fi
if [ -f $HOME/.config/bash_include/xclipFile ]; then . $HOME/.config/bash_include/xclipFile; fi
if [ -f $HOME/.config/bash_include/ext ]; then . $HOME/.config/bash_include/ext; fi
if [ -f $HOME/.config/bash_include/256-colors ]; then . $HOME/.config/bash_include/256-colors; fi
if [ -f $HOME/.config/bash_include/info ]; then . $HOME/.config/bash_include/info; fi
if [ -f $HOME/.config/bash_include/lcd ]; then . $HOME/.config/bash_include/lcd; fi
if [ -f $HOME/.config/bash_include/myip ]; then . $HOME/.config/bash_include/myip; fi

# PS1
if [ -f $HOME/.config/st/git-prompt.sh ]; then
    source $HOME/.config/st/git-prompt.sh;
    setopt PROMPT_SUBST;
    PS1='$(__git_ps1 "(%s)") %~ ';
else
    PS1=" %~ "
fi
