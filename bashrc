EDITOR=vi
IGNOREEOF=1
PS1="(\# \u \h \w)\n> "
# ❆ ✼

export EDITOR IGNOREEOF PS

export HISTSIZE=1000000
export HISTFILESIZE=1000000
shopt -s histappend

if [ -t 0 ]
then
    reload() {
        exec bash
    }

    reset -Q
    stty erase ^H
fi

BASH_LOCAL="$HOME/.bash_local"
[ -r "$BASH_LOCAL" ] && . "$BASH_LOCAL" 
