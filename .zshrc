# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/konradpazgan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting rails zsh-z asdf alias-finder macos forgit 1password ohmyzsh-full-autoupdate)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
	 export EDITOR='nvim'
 else
	 export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#------------------
# ALIASES
# -----------------

# directories
alias tssb="cd ~/Code/sandbox/TS"

#apps
alias c="code ."
alias cu="cursor ."

#ruby-dev
alias bers="bundle exec rspec"
alias berf="bundle exec rspec --tag @focus"
alias bersd="bundle exec rspec --format d"
alias berc="bundle exec rubocop"
alias bera="bundle exec rubocop -a"
alias cop="git add -N .; git diff --name-only | grep '\.rb$' | xargs rubocop"
alias ffp="fzf --preview 'bat --color \"always\" {}' --bind=ctrl-j:preview-down --bind=ctrl-k:preview-up --preview-window=right:60%:wrap"
alias gdiff="git status -s | fzf --no-sort --reverse --preview 'git diff --color=always {+2} | diff-so-fancy' --bind=ctrl-j:preview-down --bind=ctrl-k:preview-up --preview-window=right:60%:wrap"
alias be="bundle exec"
alias besk="bundle exec sidekiq"

#docker-compose
alias dcu="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"

#git custom
alias ggpushf="ggpush --force-with-lease"
alias ggpushf!="ggpush --force"
alias gpro="git pull --rebase origin master"
gfco() {
	git checkout "$(git branch | fzf| tr -d '[:space:]')"	
}
alias gcsmsg="git commit -S -m"
alias glr="git pull --rebase"
alias glrd="git pull --rebase origin develop"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export LC_ALL=en_US.UTF-8

ZSH_ALIAS_FINDER_AUTOMATIC=true
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

eval "$(starship init zsh)"

eval $(thefuck --alias)
