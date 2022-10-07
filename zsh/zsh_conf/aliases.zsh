alias cls='clear;ls'

alias guns='git unstage'
alias gunc='git uncommit'

alias ka9='killall -9'
alias k9='kill -9'


if command -v exa &> /dev/null; then
  alias l='exa'
  alias ls="exa"
  alias ll='exa -l'
  alias la='exa -la'
fi
alias du='du -hx'
if command -v duf &> /dev/null; then
  alias df='duf'
fi

if command -v radian &> /dev/null; then
  alias R='radian'
fi


alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something

# Functions
#
# (f)ind by (n)ame
# usage: fn foo
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }


alias kssh="kitty +kitten ssh"


alias ucl="sudo openconnect vpn.ucl.ac.uk --csd-wrapper ~/tmp/ucl-csd-wrapper.sh --authgroup=RemoteAccess --user=ucbtmog"
