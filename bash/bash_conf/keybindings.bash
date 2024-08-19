# Note: Bash uses readline for command-line editing, which has different key binding syntax compared to zsh

# Enable vi mode
set -o vi

# Bind Ctrl-r to reverse history search
bind '"\C-r": reverse-search-history'

# Emacs style bindings
bind '"\C-a": beginning-of-line'
bind '"\C-e": end-of-line'

# Numpad bindings (these may not work in all terminals with bash)
bind '"\eOp": "0"'
bind '"\eOl": "."'
bind '"\eOM": "\C-m"'

# Word movement
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

# Delete key bindings
bind '"\C-?": backward-delete-char'
bind '"\e[3~": delete-char'
bind '"\e3;5~": delete-char'
bind '"\e[3~": delete-char'

# If you're using bash on macOS, you might need to add this to your .inputrc file:
# "\e[A": history-search-backward
# "\e[B": history-search-forward