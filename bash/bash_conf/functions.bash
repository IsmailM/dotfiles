# $1 == SSH address
# $2 == Local dir
# $3 == Remote dir
mnt() {
  if [ "$2" != "" ]; then
    if [ "$3" != "" ]; then
      mkdir "$2"; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 "$1:$3" "$2"
    else
      mkdir "$2"; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 "$1:/" "$2"
    fi
  else
    mkdir "$1"; sshfs -o allow_other -o defer_permissions -o follow_symlinks -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=600 -o ServerAliveInterval=15 "$1:/" "$1"
  fi
}

## Add functions
unalias o 2>/dev/null
o() {
  if [ "$1" != "" ]; then
    open "$1"
  else
   open "$PWD"
  fi
}

s() {
  if [ "$1" != "" ]; then
    subl "$1"
  else
    subl "$PWD"
  fi
}

c() {
  if [ "$1" != "" ]; then
    code "$1"
  else
    code "$PWD"
  fi
}

cdf() {
  cd "$(ff "$@")"
}

ff() {
  osascript <<EOF
  tell application "Finder"
    if (1 <= (count Finder windows)) then
      get POSIX path of (target of window 1 as alias)
    else
      get POSIX path of (desktop as alias)
    end if
  end tell
EOF
}

read_env() {
  set -o allexport
  if [ "$1" != "" ]; then
    source "$1"
  else
    if [ -f app.env ]; then
      source app.env
    fi
    if [ -f app-private.env ]; then
      source app-private.env
    fi
  fi
  set +o allexport
}

kport() {
  kill $(lsof -t -i :"${1}")
}

# Kill process running on a specified port
kpp() {
    local PORT=$1

    # Check if lsof is installed
    if ! command -v lsof >/dev/null 2>&1; then
        echo "lsof command not found. Please install lsof."
        return 1
    fi

    # Find process running on the specified port
    local PROCESS
    PROCESS=$(lsof -t -i TCP:"${PORT}" -sTCP:LISTEN)

    if [ -n "$PROCESS" ]; then
        echo "Found a process ($PROCESS) running on port $PORT"

        # Ask for user confirmation
        read -p "Do you want to kill the process running on port $PORT? [y/N] " confirm
        if [[ "$confirm" =~ ^[Yy]$ ]]; then
            # Try a graceful kill first
            kill "$PROCESS" && sleep 1

            # Check if the process is still running, then forcefully kill it
            if lsof -Pi TCP:"${PORT}" -sTCP:LISTEN -t >/dev/null; then
                echo "Graceful kill failed. Force killing process $PROCESS."
                kill -9 "$PROCESS"
            fi
            echo "Process $PROCESS killed."
        else
            echo "Process on port $PORT not killed by user's choice."
        fi
    else
        echo "No process found running on port $PORT."
    fi
}