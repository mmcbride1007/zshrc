# Source Prezto
if [[ -s ~/.zprezto/init.zsh ]]; then
  source ~/.zprezto/init.zsh
fi

# use z for better fuzzy searching
if [[ -s ~/z/z.sh ]]; then
	source ~/z/z.sh
fi

# source aliases
if [[ -f ~/dotfiles/.aliases ]]; then
  source ~/dotfiles/.aliases
fi

# source functions
if [[ -f ~/dotfiles/.functions ]]; then
  source ~/dotfiles/.functions
fi

# exports
export PATH="$PATH:~/.node/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/mysql/bin"

# init rbenv
eval "$(rbenv init -)"

# set JENV_ROOT for jenv to work
export JENV_ROOT=/usr/local/opt/jenv

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
