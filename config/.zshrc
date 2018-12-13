# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/stavenvanderbilt/.oh-my-zsh"



export NVM_DIR="$HOME/.nvm"
alias active_nvm='. "/usr/local/opt/nvm/nvm.sh"'

# Curl is configured to use SSL, but we have not been able to determine which SSL backend it is using. Please see PycURL documentation for how to specify the SSL backend manually.
# http://pycurl.io/docs/latest/install.html
# https://www.cnblogs.com/yoyo008/p/9356074.html
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PYCURL_SSL_LIBRARY=openssl

# configure for the letote project
export COUNTRY_CODE='CN'

# configure for the go lang
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GOROOT="/usr/local/go"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# ssh the server machine
alias sshvpntops="ssh -p 29824 deploy@vpn.tops.com"
alias sshwwwtops="ssh deploy@prod.tops.com"

# aliases related to the rails
alias test="bundle exec rspec"
alias rc="bundle exec rails c"
alias rct="RAILS_ENV=test bundle exec rails c"
alias rs="bundle exec rails s -b 0.0.0.0 -p 3000"
alias rg="bundle exec rails g"
alias rgmi="bundle exec rails g migration"
alias rgmo="bundle exec rails g model"
alias rdcmt="RAILS_ENV=test bundle exec rake db:drop db:create db:migrate"
alias rdct="RAILS_ENV=test bundle exec rake db:drop db:create"
alias rdt="RAILS_ENV=test bundle exec rake db:drop"
alias rct="RAILS_ENV=test bundle exec rake db:create"
alias rmt="RAILS_ENV=test bundle exec rake db:migrate"
alias rdcmd="RAILS_ENV=development bundle exec rake db:drop db:create db:migrate"
alias rdcd="RAILS_ENV=development bundle exec rake db:drop db:create"
alias rdd="RAILS_ENV=development bundle exec rake db:drop"
alias rcd="RAILS_ENV=development bundle exec rake db:create"
alias rmd="RAILS_ENV=development bundle exec rake db:migrate"
alias bi="bundle install"


alias sshltdev="ssh ubuntu@letote-dev"
alias sshltdevbg="ssh ubuntu@letote-dev-bg"
alias sshltstaging="ssh ubuntu@letote-staging"
alias sshltstagingbg="ssh ubuntu@letote-staging-bg"
alias sshkafkadev="ssh ubuntu@kafka-dev"


# setting the terminal to use the proxy
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'

# Alias
alias t="cd ~/workspace/letote"



alias clear_swap="rm -rf /Users/stavenvanderbilt/.vim/swap/*"

# dos2unix and unix2dos tool to convert the "\r" or "\n" or "\r\n" for Linux, windows and mac OS
# find ./ -type f -print0 | xargs -0 dos2unix
# find ./ -type f print0 | xargs -0 sed -i 's/^M$//'
alias format_dos_2_unix="find . -type f -exec dos2unix {} \;"



# configuration for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# the pyenv-virtualenv plugin for pyenv 

# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH="$HOME/.cargo/bin:$PATH"


# Configurations for Rust
alias cc="cargo check"
alias cb="cargo build"
alias cr="cargo run"


