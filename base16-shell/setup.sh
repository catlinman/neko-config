#!/bin/sh

# Download the newest version of Base16 Shell.
git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell

# Get the working directory.
DIR="$(dirname "$(readlink -f "$0")")"

# Copy the new theme to the base16-shell directory.
cp $DIR/base16-neko.sh $HOME/.config/base16-shell/scripts/

# Create a new command for the theme to be used in other configuration files.
alias base16_neko='_base16 "$HOME/.config/base16-shell/scripts/base16-neko.sh" neko'
