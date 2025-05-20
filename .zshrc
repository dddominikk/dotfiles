export ZSH="${HOME}/.oh-my-zsh"

# Theme.
ZSH_THEME="spaceship"
export SPACESHIP_DIR_TRUNC=0

# Plugins.
plugins=(git,auto-suggestion)

source $ZSH/oh-my-zsh.sh

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`


# Either removes a file extension or a slash at the end of a string, in that order of priority.
# basically get directory path from a file path and dir name from a dir path
strip_suffix() {
  local input="$1"
  local result="$input"

  if [[ "$input" == */ ]]; then
    # Remove trailing slash
    result="${input%/}"
  elif [[ "$input" == *.* ]]; then
    # Remove file extension
    result="${input%.*}"
  fi

  echo "$result"
}
