# Path to your oh-my-zsh configuration.
DISABLE_UPDATE_PROMPT=true

setopt interactivecomments
if [[ $OSTYPE =~ "darwin" ]]
then
    echo "we are in Mac land"
    export PGDATA=/usr/local/var/postgres
    unalias run-help
else

    echo "we are in " $OSTYPE
fi

autoload run-help
 HELPDIR=/usr/local/share/zsh/help
export HOMEBREW_GITHUB_API_TOKEN=dc4867d2ed78e3e10d144f2271dd759ff860a077
export VAGRANT_DEFAULT_PROVIDER=parallels
export EDITOR="vi"
# this is for the go language 

if [[ $OSTYPE =~ "darwin" ]]
then
    export GOPATH=$HOME/go
    export PATH=$PATH:/usr/local/opt/go/libexec/bin
fi
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
#export LESSOPEN='|pygmentize- g %s'
ZSH=$HOME/.oh-my-zsh
#PGHOST it is necesary for postgresql to work in this machine
export PGHOST=localhost
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
#ZSH_THEME="random"
ZSH_THEME="arrow"
plugins=(git brew heroku rails luis cambia)
#To be use with rsync. It may need to be clean from time to time.
#but it should not be necesary.
export RSYNC_PARTIAL_DIR=~/.rsync-tmp
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if [[ $OSTYPE =~ "darwin" ]]
then

    export PATH=/Users/luis/bin:/usr/bin:/bin:/usr/sbin:/sbin::/usr/X11/bin
    autoload -U compinit && compinit
    #-------From bash_profile
    #This file is the one that bash reads
    #source /usr/local/etc/bash_completion.d/git-completion.bash
    #PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
    #PS1='[%c$(__git_ps1 " (%s)")]\$ '
    #export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

    export ARCHFLAGS="-arch x86_64"
    export MANPATH=/opt/local/man:$MANPATH
    export VIM_APP_DIR=/Applications/MacPorts/
    export TM_SUPPORT_PATH="/Library/Application Support/TextMate/Support"
fi

#export HISTIGNORE="history:ls:pwd"
export HISTCONTROL=ignoreboth
export HISTSIZE=900
export TERM=xterm-color
#export BUNDLER_EDITOR=/usr/local/bin/mate 
export BUNDLER_EDITOR=~/bin/subl2
#export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export GREP_OPTIONS='-E' 
export CLICOLOR=1
export LC_CTYPE=en_US.UTF-8
source ~/.alias
#Make bash check its window size after a process completes
#shopt -s checkwinsize
test -r /sw/bin/init.sh && . /sw/bin/init.sh

#----------gettext-tools--------
#LDFLAGS:  -L/usr/local/opt/gettext/lib
#CPPFLAGS: -I/usr/local/opt/gettext/include
#----------------------------------------

export COLOR_NC='e[0m' # No Color
export COLOR_WHITE='e[1;37m'
export COLOR_BLACK='e[0;30m'
export COLOR_BLUE='e[0;34m'
export COLOR_LIGHT_BLUE='e[1;34m'
export COLOR_GREEN='e[0;32m'
export COLOR_LIGHT_GREEN='e[1;32m'
export COLOR_CYAN='e[0;36m'
export COLOR_LIGHT_CYAN='e[1;36m'
export COLOR_RED='e[0;31m'
export COLOR_LIGHT_RED='e[1;31m'
export COLOR_PURPLE='e[0;35m'
export COLOR_LIGHT_PURPLE='e[1;35m'
export COLOR_BROWN='e[0;33m'
export COLOR_YELLOW='e[1;33m'
export COLOR_GRAY='e[1;30m'
export COLOR_LIGHT_GRAY='e[0;37m'
alias colorslist="set | egrep 'COLOR_w*'"
export PATH=~/bin:$PATH:/usr/local/share/aclocal

#RVM
#if [[ -s /Users/luis/.rvm/scripts/rvm ]] ; then source /Users/luis/.rvm/scripts/rvm ; fi
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export CC=/usr/bin/gcc-4.2
#------------------------------------------////
#       Color Manpages
#------------------------------------------////
 
export LESS_TERMCAP_mb=$'\E[01;31m'             # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'             # begin bold
export LESS_TERMCAP_me=$'\E[0m'                 # end mode
export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode                
export LESS_TERMCAP_so=$'\E[01;44;33m'          # begin standout-mode - info box                              
export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
export LESS_TERMCAP_us=$'\E[01;32m'             # begin underline
#export MANPAGER="/usr/bin/most -s"             # color using most

#rbenv 
if [[ $OSTYPE =~ "Linux" ]]
then
    export PATH="$HOME/.rbenv/bin:$PATH"
    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
fi

if [[ $OSTYPE =~ "darwin" ]]
then
    NPM_PAT=H"/usr/local/share/npm/bin"
    export RBENV_ROOT=/usr/local/var/rbenv
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
    export PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

    ###
    export PATH="$PATH:$NPM_PATH"
    export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/aclocal:$PATH"
fi

eval "$(rbenv init -)"

#bindkey -v # keys are set for vi now. -e for emacs 
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' condition m

if [[ $OSTYPE =~ "darwin" ]]
then
    zstyle :compinstall filename '/Users/luis/.zshrc'
else
    zstyle :compinstall filename '~/.zshrc'
fi

autoload -Uz compinit
compinit
# End of lines added by compinstall
export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml
#Docker
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/luis/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
eval "$(thefuck --alias)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#eval $(docker-machine env default)
RUBY_CONFIGURE_OPTS=--with-readline-dir=`brew --prefix readline`
# for libxml2, installed via brew
#LDFLAGS:  -L/usr/local/opt/libxml2/lib
#CPPFLAGS: -I/usr/local/opt/libxml2/include
#PKG_CONFIG_PATH: /usr/local/opt/libxml2/lib/pkgconfig
