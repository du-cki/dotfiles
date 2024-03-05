export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda"

ENABLE_CORRECTION="true"

DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Standard plugins can be found in $ZSH/plugins/
plugins=(
    git
    rust 
    common-aliases 
    dnf
    ipfs
    jsontools
    nvm
    poetry
    python
    qrcode
    safe-paste
    screen
    sudo
    themes
    history
)

source $ZSH/oh-my-zsh.sh
source ~/.initrc
