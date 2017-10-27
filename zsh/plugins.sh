
# Clone repositories and output them to the correct plugin directories.
# Run this script in the current context "source plugins.sh" to keep environment variables.
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone git://github.com/chrissicool/zsh-256color.git $ZSH_CUSTOM/plugins/zsh-256color
git clone git://github.com/popstas/zsh-command-time.git $ZSH_CUSTOM/plugins/zsh-command-time
git clone git://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting-filetypes

