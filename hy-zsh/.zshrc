# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/fresh/.oh-my-zsh"
fpath=($ZSH $fpath)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="hy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#fpath=(/usr/local/share/zsh-completions $fpath)

plugins=(
    zsh-autosuggestions
    sublime
    zsh-completions
    zsh-syntax-highlighting
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.zsh_aliases

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


OS=`uname -s`

export PATH="$HOME/opt/bin:$PATH"

test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"
if [ -n "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

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



# mac completion
    complete -cf sudo
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi

    if [ -f ~/.git-completion.zsh ]; then
        . ~/.git-completion.zsh
    fi

    PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
    PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
    PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
    PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
    PATH="$HOME/perl5/bin${PATH+:}${PATH}"; export PATH;


# mac lib path
    #export DYLD_LIBRARY_PATH=$HOME/opt/program/libevent/lib



###Script###
export PATH=$PATH:/Users/fresh/HyScripts

# added by Anaconda2 4.3.1 installer
export PATH="$PATH:/Users/fresh/anaconda/bin"

export PATH="/opt/X11/bin/":$PATH

export PATH="/usr/local/sbin:$PATH"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7f8c8d,bold"
