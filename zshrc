export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="bureau"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disables compfix, preventing "Insecure completion-dependent directories detected"
ZSH_DISABLE_COMPFIX=true

# Execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.zsh/bin"
source $ZSH/oh-my-zsh.sh

### User loaders section

source ~/.zsh/locale
source ~/.zsh/cdpath
source ~/.zsh/aliases
source ~/.zsh/homebrew
source ~/.zsh/settings
source ~/.zsh/iterm2
source ~/.zsh/path
source ~/.zsh/rust
source ~/.zsh/hub
source ~/.zsh/python
source ~/.zsh/nvm
source ~/.zsh/golang
source ~/.zsh/colordiff
source ~/.zsh/vscode
source ~/.zsh/bun
# source ~/.zsh/imagemagick
# source ~/.zsh/rbenv
# source ~/.zsh/1pass
# source ~/.zsh/bashmyaws
# source ~/.zsh/qt
# source ~/.zsh/pyenv
# source ~/.zsh/broot
# source ~/.zsh/funky
# source ~/.zsh/zfz
# source ~/.zsh/python
# source ~/.zsh/java
# source ~/.zsh/android-sdk
# source ~/.zsh/completions
# test -d /Users/fcoury/opt/miniconda3 && source ~/.zsh/conda
# test -f ~/.zsh/secrets && source ~/.zsh/secrets
# test -f ~/.iterm2_shell_integration.zh && source ~/.iterm2_shell_integration.zsh

# Plugins
# plugins=(docker zsh-syntax-highlighting zsh-nvm-auto-switch)
plugins=(zsh-syntax-highlighting zsh-nvm-auto-switch zsh-autosuggestions)

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

### Starship prompt

eval "$(starship init zsh)"
source ~/.zsh/thefuck
