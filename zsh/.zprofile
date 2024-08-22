# source homebrew variables (if available)
if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="$PATH:/home/kebula/.local/share/JetBrains/Toolbox/scripts/"

