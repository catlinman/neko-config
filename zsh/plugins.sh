
# Clone repositories and output them to the correct plugin directories.
# Run this script in the current context "source plugins.sh" to keep environment variables.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/loiccoyle/zsh-github-copilot $ZSH_CUSTOM/plugins/zsh-github-copilot
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/chrissicool/zsh-256color.git $ZSH_CUSTOM/plugins/zsh-256color
git clone https://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting-filetypes
mv $ZSH_CUSTOM/plugins/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes{,.plugin}.zsh
