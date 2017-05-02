# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
    *)
    ;;
esac

###############################################################################
# set env in different OS
OS=`uname -s`

export PATH=$HOME/opt/bin:$PATH

case $OS in
    "Linux")
#       echo "Linux"
#       C_ALL=
#       LANG=
#       LC_CTYPE=zh_TW.utf8
#       LC_COLLATE=C
       export LC_TIME=C
       export LANG LC_CTYPE LC_COLLATE
#       linux_logo
   ;;
   "Darwin")
       echo "Mac OS X"
       export LC_ALL=en_US.UTF-8
       export LC_COLLATE=C
       export LC_TIME=C
    ;;
esac
export EDITOR="vim"
set -o vi

if [ -f ~/.hsin-rcfiles/.git-completion.bash ]; then
    . ~/.hsin-rcfiles/.git-completion.bash
fi
###############################################################################
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
###############################################################################
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
###############################################################################
# enable color support of ls and also add handy aliases
###############################################################################
test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"
###############################################################################
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
###############################################################################
# for colorful termial
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
end="\[\e[0m\]"
black="\[\e[1;30m\]"
red="\[\e[1;31m\]"
green="\[\e[1;32m\]"
yellow="\[\e[1;33m\]"
blue="\[\e[1;34m\]"
magenta="\[\e[1;35m\]"
cyan="\[\e[1;36m\]"
white="\[\e[1;37m\]"
darkblack="\[\e[30m\]"
darkred="\[\e[31m\]"
darkgreen="\[\e[32m\]"
darkyellow="\[\e[33m\]"
darkblue="\[\e[34m\]"
darkmagenta="\[\e[35m\]"
darkcyan="\[\e[36m\]"
darkwhite="\[\e[37m\]"

###########################################################

magenta="\[\e[38;5;239m\]"
yellow="\[\e[38;5;214m\]"
darkgreen="\[\e[38;5;170m\]"
red="\[\e[38;5;162m\]"
cyan="\[\e[38;5;11m\]"
green="\[\e[38;5;202m\]"


bgcyan="\[\e[46m\]"
lightyellow="\[\e[93m\]"

left=$magenta"["$end
right=$magenta"]"$end

shortline=${magenta}"─"${end}
#set background=dark
#user=$blue"\u"$end

#user=${lightyellow}"(#￣▽ ￣#)b "${end}${left}${cyan}"🎵  \u"${end}${right}
#user=${lightyellow}${end}${left}${darkgreen}"\u"${end}${right}
user=${magenta}\(${end}${darkgreen}"\u"${magenta}\)${end}${end}


localhost=${left}$yellow"\H"$end${right}
command_number=$left$red"\#"$end$right

gitbranch="\$(git branch > /dev/null 2>&1 && git branch | grep \"*\" | awk '{ printf \"$left$green%s$end$right\", \$2 }')"

dir=${cyan}"<(￣︶￣)-o"${end}$left"\w"$right

headline="${magenta}┌──${end}${user}$shortline$shortline${localhost}$shortline$command_number$shortline$gitbranch${end}""\n"

prompt="${magenta}↳ ${yellow}$ ${end}"$end

#PS1="$user$at$localhost$time_$command_number$gitbranch$dir$orz\n$prompt"
PS1="${headline}${magenta}├${end}$dir\n$prompt"

###############################################################################
# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
###############################################################################
export LIBGL_ALWAYS_INDIRECT=1



if [ $OS == "Darwin" ]; then

# mac completion
    complete -cf sudo
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi

    PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
    PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
    PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
    PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
    PATH="$HOME/perl5/bin${PATH+:}${PATH}"; export PATH;


# mac lib path
    export DYLD_LIBRARY_PATH=$HOME/opt/program/libevent/lib
fi



###Script###
PATH=$PATH:/Users/fresh/HyScripts
