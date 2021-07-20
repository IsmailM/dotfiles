# $1 == SSH address
# $2 == Local dir
# $3 == Remote dir
function mnt {
  if [ "$2" != "" ]; then
    if [ "$3" != "" ]; then
      mkdir $2; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 $1:$3 $2
    else
      mkdir $2; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 $1:/ $2
    fi
  else
    mkdir $1; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 $1:/ $1
  fi
}

## Add functions
function o {
  if [ "$1" != "" ]; then
    open $1
  else
   open $PWD
  fi
}

function s {
  if [ "$1" != "" ]; then
    subl $1
  else
    subl $PWD
  fi
}

function c {
  if [ "$1" != "" ]; then
    code $1
  else
    code $PWD
  fi
}

function cdf() {
  cd `ff $argv`
}

function ff () {
  echo '
  tell application "Finder"
    if (1 <= (count Finder windows)) then
      get POSIX path of (target of window 1 as alias)
    else
      get POSIX path of (desktop as alias)
    end if
  end tell
  ' | osascript -
}

