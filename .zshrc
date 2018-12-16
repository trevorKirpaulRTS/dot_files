source ~/antigen.zsh

alias code="GTK_IM_MODULE=ibus code"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# My Bundles

antigen bundle lukechilds/zsh-nvm

# autocomplete (installed via pacman)
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.

antigen theme clean

# Set default editor to vim
export EDITOR=vim

# Use xcape to set Control key to behave like Esc when toggled
xcape -e "Control_L=Escape"
xcape -e "#66=Escape"

# Set up Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Configure android emulator to run directly in terminal.
function emulator { ( cd "$(dirname "$(whence -p emulator)")" && ./emulator "$@"; ) }
# Set alias to shorten command and also fix the side-effect
alias emu="$ANDROID_HOME/tools/emulator"

# Tell Antigen that you're done.
antigen apply

