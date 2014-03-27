# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Http Proxy
# export http_proxy="127.0.0.1:8080"

# Add Postgres.app bin to PATH
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# Haskell Path
export PATH=$PATH:"~/Library/Haskell/bin"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Todo.txt
export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'
complete -F _todo t

# Qwandry default editor
export QWANDRY_EDITOR='mvim'

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# Autocomplete Grunt commands
which grunt &> /dev/null && eval "$(grunt --completion=bash)"

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Load Boxen env
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Start Emacs Daemon while loagin
# emacs --daemon

[[ -s /Users/haowei/.nvm/nvm.sh ]] && . /Users/haowei/.nvm/nvm.sh # This loads NVM

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

. ~/.dotfiles/z/z.sh

stty stop undef

if [ -f $(brew --prefix)/etc/bash_completion  ]; then
  . $(brew --prefix)/etc/bash_completion
fi
