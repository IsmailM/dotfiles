alias cls='clear;ls'

alias guns='git unstage'
alias gunc='git uncommit'

alias ka9='killall -9'
alias k9='kill -9'

if command -v exa &> /dev/null; then
  alias ls="exa"
  alias la='exa -la'
  
  unalias l 2>/dev/null
  l() {
    if [[ ${PWD} = /Users/ismailm ]]; then
      exa -I 'Music|Movies|Public|Pictures|Library|Applications|Dropbox|Document' "$@"
    else
      exa "$@"
    fi
  }

  unalias ll 2>/dev/null
  ll() {
    if [[ ${PWD} = /Users/ismailm ]]; then
      exa -I 'Music|Movies|Public|Pictures|Library|Applications|Dropbox|Document' -lh "$@"
    else
      exa -l "$@"
    fi
  }
fi

alias du='du -hx'
if command -v duf &> /dev/null; then
  alias df='duf'
fi

if command -v radian &> /dev/null; then
  alias R='radian'
fi

# Global aliases are not supported in bash, so these are converted to functions
..() { cd .. ; }
...() { cd ../.. ; }
....() { cd ../../.. ; }
.....() { cd ../../../.. ; }
C() { wc -l ; }
H() { head ; }
L() { less ; }
N() { cat > /dev/null ; }
S() { sort ; }
G() { grep "$@" ; }

# Functions
#
# (f)ind by (n)ame
# usage: fn foo
# to find all files containing 'foo' in the name
fn() { find . -name "*$1*" ; }

alias kssh="kitty +kitten ssh"

alias ucl="sudo openconnect vpn.ucl.ac.uk --csd-wrapper ~/tmp/ucl-csd-wrapper.sh --authgroup=RemoteAccess --user=ucbtmog"