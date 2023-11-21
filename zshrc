export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="bureau"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disables compfix, preventing "Insecure completion-dependent directories detected"
ZSH_DISABLE_COMPFIX=true

# Execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# User configuration

export PATH="$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.zsh/scripts:$PATH"
source $ZSH/oh-my-zsh.sh

### User loaders section

source ~/.zsh/config/locale
source ~/.zsh/config/cdpath
source ~/.zsh/config/aliases
source ~/.zsh/config/settings
source ~/.zsh/config/iterm2
source ~/.zsh/config/path
source ~/.zsh/config/hub
source ~/.zsh/config/python
source ~/.zsh/config/nvm
source ~/.zsh/config/golang
source ~/.zsh/config/bun
source ~/.zsh/config/homebrew
source ~/.zsh/config/rust
source ~/.zsh/config/colordiff
source ~/.zsh/config/vscode
source ~/.zsh/config/jenv
source ~/.zsh/config/exa
source ~/.zsh/config/bat
source ~/.zsh/config/deno
source ~/.zsh/config/yarn
source ~/.zsh/config/rtx
source ~/.zsh/config/atuin
source ~/.zsh/config/pnpm
source ~/.zsh/config/thefuck
source ~/.zsh/config/library_path
source ~/.zsh/config/1password
source ~/.zsh/config/rust
test -f ~/.zsh/secrets && source ~/.zsh/secrets

# source ~/.zsh/mcfly
# source ~/.zsh/imagemagick
# source ~/.zsh/rbenv
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
# test -f ~/.iterm2_shell_integration.zh && source ~/.iterm2_shell_integration.zsh

# Plugins
# plugins=(docker zsh-syntax-highlighting zsh-nvm-auto-switch)
# plugins=(zsh-nvm-auto-switch zsh-autosuggestions zsh-syntax-highlighting)

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

### Starship prompt

eval "$(starship init zsh)"

plugins=(zsh-nvm-auto-switch zsh-autosuggestions zsh-syntax-highlighting)
