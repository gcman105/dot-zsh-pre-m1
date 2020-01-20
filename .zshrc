# XDG Base Directory Specification -------------------------------------------
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
if [[ $HOME ]]; then
  if [[ ! $XDG_DATA_HOME ]]; then
    export XDG_DATA_HOME=$HOME/.local/share
  fi

  if [[ ! $XDG_CONFIG_HOME ]]; then
    export XDG_CONFIG_HOME=$HOME/.config
  fi

  if [[ ! $XDG_DATA_DIRS ]]; then
    export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
  fi

  if [[ ! $XDG_CONFIG_DIRS ]]; then
    export XDG_CONFIG_DIRS=/etc/xdg
  fi

  if [[ ! $XDG_CACHE_HOME ]]; then
    export XDG_CACHE_HOME=$HOME/.cache
  fi

  # Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh
fi
# end XDG Base Directory Specification -------------------

# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="cobalt2"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Enable Vim mode in ZSH
#bindkey -v
#autoload -U edit-command-line
#zle -N edit-command-line
#bindkey '^E' edit-command-line                   # Opens Vim to edit current command line
#bindkey '^R' history-incremental-search-backward # Perform backward search in command line history
#bindkey '^S' history-incremental-search-forward  # Perform forward search in command line history
#bindkey '^P' history-search-backward             # Go back/search in history (autocomplete)
#bindkey '^N' history-search-forward              # Go forward/search in history (autocomplete)

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

source ~/.tmxi/tmuxinator.zsh

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# jedi
#export PYTHONSTARTUP=$HOME/.pythonrc.py

# yarn
export PATH="$(yarn global bin):$PATH"

# wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator

export PATH="$HOME/.composer/vendor/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/openssl/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/gettext/bin:$PATH"

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

export PATH="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java:$PATH"

source ~/.zsh_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"

export PATH=/Users/gcman105/.rbenv/shims:$PATH
eval "$(rbenv init -)"

