# env settings

# special
PS1='$(logname)@$(hostname -s):$(pwd | sed s\0$HOME\0\~\0)$ '
CDPATH=
export PS1 CDPATH

# language
locale -a | grep -i -e 'en_us.*utf.*8' > /dev/null && LANG=en_US.UTF-8
export LANG

# tool
type vi > /dev/null && EDITOR=vi
type vim > /dev/null && EDITOR=vim
type less > /dev/null && PAGER=less

export EDITOR PAGER

# env
PATH=$HOME/bin:$PATH
LESS='-iMr'

export LESS

# tty
stty stop undef
stty start undef

# local
test -f $HOME/.profile.local && . $HOME/.profile.local

# test -e /etc/profile.d/plan9.sh && . /etc/profile.d/plan9.sh
