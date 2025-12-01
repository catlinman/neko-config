# Nekoconfig ZSH setup. Requires oh-my-zsh to run. You can get it via this command:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Feeling like you don't have curl? You can use wget to download it as well!
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Quick command to check if a program exists.
exists() { [ -x "$(command -v $1)" ]; }

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# If you're working with Copilot or something else, you might want to just use vanilla zsh.
if [ "$TERM_PROGRAM" = "vscode" ]; then
    return
fi

# Base16 Shell support. Install via: git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
# Don't forget to set your theme via base16 and tab completion. I personally use base16_neko which is a fork of base16_seti.
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_neko

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Note: I have some plugins like OSX and Arch. You probably don't need these.
plugins=(
    encode64 extract
    history dirhistory dircycle
    httpie
    git git-extras
    ansible docker kubectl
    python pyenv pip pipenv virtualenv
    ruby rails rake gem
    rust 
    golang
    node npm yarn nvm
    archlinux systemd
    zsh-autosuggestions zsh-256color zsh-github-copilot
    zsh_codex # Make sure to configure as stated in https://github.com/tom-doerr/zsh_codex
)

# To install the plugins from my custom setup simply "source plugins.sh".

# Source the base oh-my-zsh script.
source $ZSH/oh-my-zsh.sh

# Colored completion - use LS_COLORS.
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# You may need to manually set your language environment.
# Don't forget to uncomment the locale in /etc/locale.gen and run locale-gen as root
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Fix issues relating to GPG key signing.
GPG_TTY=$(tty)
export GPG_TTY

# Compilation flags - uncomment these or change them if you want them
# export ARCHFLAGS="-arch x86_64"

# Configure zsh_codex keybind
bindkey '^X' create_completion

# Custom dircolors setup.
if whence dircolors > /dev/null; then
    eval $(dircolors -b "$HOME/.dircolors")
    alias ls='ls --color'

else
    export CLICOLOR=1
    source ~/.osxcolors

fi

# Load custom aliases from a designated file.
if [[ ! -a $HOME/.zsh_aliases ]]; then
    printf "# ZSH custom alias declarations file\n# Example: alias pip=\"pip3\"" > $HOME/.zsh_aliases

else
    source $HOME/.zsh_aliases

fi

# Load custom paths from a designated file.
if [[ ! -a $HOME/.zsh_path ]]; then
     printf "# ZSH path variable declarations file\n# Example: PATH=~/.npm-global/bin:\$PATH" > $HOME/.zsh_path

else
    source $HOME/.zsh_path

fi

# Install via $ git clone https://github.com/bash-my-aws/bash-my-aws.git ~/.bash-my-aws
# If bash-my-aws is available - load it in the path and source the configuration.
if [[ -d $HOME/.bash-my-aws ]]; then
    export PATH="$HOME/.bash-my-aws/bin:$PATH"
    source $HOME/.bash-my-aws/aliases
fi

# Install via $ git clone https://github.com/anyenv/anyenv ~/.anyenv
if [[ -d $HOME/.anyenv ]]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
fi

if exists anyenv; then
    eval "$(anyenv init -)"
fi

# Preferred editor for local sessions.
if exists vim; then
    export EDITOR='vim'
fi

# Replace default ls commands with exa's.
if exists exa; then
    alias ls="exa --icons"
    alias la="exa -laagh --git --icons"
fi

# Create an extra alias just for pasting. Uses netcat if available.
# Example: echo You can now paste like this! | tb
if exists nc; then
    alias tb="nc termbin.com 9999"
    
else
    alias tb="(exec 3<>/dev/tcp/termbin.com/9999; cat >&3; cat <&3; exec 3<&-)"

fi

# Setup thefuck and it's alias if it is installed.
if exists thefuck; then
    eval $(thefuck --alias)
fi

# If we have a custom directory for npm modules add it to the path.
if [[ -d "$HOME/.npm-global" ]]; then
    export PATH=~/.npm-global/bin:$PATH
fi

# Custom key bindings go in this section.
bindkey "[C" forward-word
bindkey "[D" backward-word

# GitHub Copilot keybindings.
bindkey '^[?' zsh_gh_copilot_suggest  # bind Alt+? to suggest
bindkey '^[^?' zsh_gh_copilot_explain  # bind Ctrl+Alt+? to explain

export PATH=$HOME/.local/bin:$PATH

# Check if the dodo .dotfile exists. If so, get todos.
if exists dodo; then
    __todo_pick="$(dodo pick)"
    __todo_count="$(dodo count)"
    
    if [[ ! -s $__todo_pick ]]; then
        echo "TO ($__todo_count) DO: $__todo_pick"
    fi
fi

. "/Users/andrew/.deno/env"

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
