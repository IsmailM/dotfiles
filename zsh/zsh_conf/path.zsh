pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}


pathPrepend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

pathAppend "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
pathAppend "/Applications/Sublime Text.app/Contents/SharedSupport/bin"
pathPrepend $HOME/bin
