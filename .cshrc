# $FreeBSD: src/etc/csh.cshrc,v 1.3 1999/08/27 23:23:40 peter Exp $
#
# System-wide .cshrc file for csh(1).
# locale
#setenv  LANG       zh_TW.Big5
setenv  LC_CTYPE   en_US.ISO8859-1
setenv  LC_TIME    C

# hotkey
alias vi vim
alias duh du -h
alias dfh df -h
alias ll ls -l
alias la ls -a
alias lla ls -la
alias rm rm -i
alias cls clear
alias more less
#alias cd 'chdir \!* ; set cdcwd=`expr "/$cwd" : "$cdexpr"`;'

if ( -x /usr/local/bin/gnuls ) then
    alias ls 'gnuls -F --show-control-chars --color=auto'
else
    alias ls 'ls --color=auto'
endif

set prompt = "%{^[[1;35m%}%n%{^[[32m%}@%{^[[33m%}%m%{^[[1;37m%}[%t]%{^[[0m%}%{^[[1;37m%}[%{^[[36m%}%h%{^[[0m%}%{^[[1;36m%}%{^[[1;37m%}]%{^[[0m%}%~>"

set path = ($HOME/opt/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin $HOME/.bin $path)

set autolist
set notify
set noclobber
bindkey -v
