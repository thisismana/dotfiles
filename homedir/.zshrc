# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="powerlevel9k/powerlevel9k"
# export ZSH_THEME="agnoster"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator time status aws)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize compleat dirpersist autojump git github gulp history cp docker docker-compose aws gradle pipenv)

source $ZSH/oh-my-zsh.sh

source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

function mkpw {
    cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9,./][!@#$%^&*()_+={}|":?><' | head -c ${1:-32}; echo
}

# https://developer.apple.com/library/content/technotes/tn2450/_index.html
# remap right alt to forward delete (e6 -> 4c)
# remap paragraph/plusminus to ESC (64 -> 29)
function enable_keymapping {
    hidutil property --set '{"UserKeyMapping":
    [{
        "HIDKeyboardModifierMappingSrc":0x7000000e6,
        "HIDKeyboardModifierMappingDst":0x70000004c
    },{
        "HIDKeyboardModifierMappingSrc":0x700000064,
        "HIDKeyboardModifierMappingDst":0x700000029
    }]
    }'
}
function disable_keymapping {
    hidutil property --set '{"UserKeyMapping": []}'
}
