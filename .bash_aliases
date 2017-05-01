alias ls='ls -F --color=auto'
alias dir='dir --color=auto'
alias dirdiff='diff --brief -r'
alias vdir='vdir --color=auto'
alias grep='grep -n --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias duh="du -h"
alias dfh="df -h"
alias tree="tree -F -C -N"
alias rm="rm -i"
alias bdate="date +%Y_%m%d_%H%M"
alias mana="man -a"
alias cp="cp -i"
alias mv="mv -i"
alias ll="ls -al"
alias llh="ls -l -h"
alias la="ls -a"
alias lla="ls -la"
alias llha="ls -lah"
alias llah="ls -lah"
alias less="less -r"
alias grep="grep --color"
alias tmux="tmux -2"
alias matlabcli="matlab -nodesktop -nosplash -nojvm"
alias ctags_cpp="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q"
alias ctags_java="ctags --recurse --langmap=Java:.java --languages=Java --verbose"

alias gotest="cd /tmp/;mkdir test;cd /tmp/test"

#alias cscope_c="find ./ -name "*.c" -or -name "*.h" -or -name "*.cpp" -or -name "*.S" | cscope -Rbk"
alias cscope_c="find ./ -name '*.c' -or -name '*.h' -or -name '*.cpp' -or -name '*.S' | cscope -Rbk"

alias Win7="VBoxHeadless -s win7 -v off &"

OS=`uname -s`
case $OS in
    "Linux")
        alias dual_screen="xrandr --auto --output HDMI1 --mode 1920x1080 --left-of VGA1"
        ;;
    "Darwin")
        alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
        ;;
esac
# vim:set ft=sh:
