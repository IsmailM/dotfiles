pathAppend() {
  if [ -d "$1" ]; then
    # Only adds to the path if it's not already there
    if ! echo "$PATH" | grep -E -q "(^|:)$1($|:)" ; then
      PATH="$PATH:$1"
    fi
  fi
}

pathPrepend() {
  if [ -d "$1" ]; then
    # Only adds to the path if it's not already there
    if ! echo "$PATH" | grep -E -q "(^|:)$1($|:)" ; then
      PATH="$1:$PATH"
    fi
  fi
}

pathAppend "/Applications/Postgres.app/Contents/Versions/latest/bin/"
pathAppend "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
pathAppend "/Applications/Sublime Text.app/Contents/SharedSupport/bin"
pathAppend "/Library/TeX/texbin"
pathAppend "$HOME/Library/Android/sdk/platform-tools"
pathPrepend "$HOME/.local/bin"
pathPrepend "$HOME/bin"
pathAppend "$HOME/Library/Python/3.9/bin"