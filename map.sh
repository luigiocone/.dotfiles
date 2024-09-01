#!/usr/bin/env bash


pairs=(
#   key        value
#    /           /
#   package    target
    "zsh"      "$HOME"
    "bash"     "$HOME"
    "bin"      "$HOME/.local/bin"
    "vim"      "$HOME/.vim"
    "ideavim"  "$HOME"
    "fd"       "${XDG_CONFIG_HOME:-$HOME/.config}/fd"
    "git"      "${XDG_CONFIG_HOME:-$HOME/.config}/git"
    "nvim"     "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
    "myenv"    "${XDG_CONFIG_HOME:-$HOME/.config}/myenv"
    "vscode"   "${XDG_CONFIG_HOME:-$HOME/.config}/Code/User"
    "iterm2"   "${XDG_CONFIG_HOME:-$HOME/.config}/iterm2"
)


function getTargetByPackage() {
    # Print requested pairs on stdout
    for ((i=0; i< ${#pairs[@]}; i+=2));
    do
        local package="${pairs[i]}"
        local target="${pairs[$i+1]}"
        if [[ $package = $1 ]]; then
            echo "\"$package\" \"$target\""
            break
        fi
    done
}


function getAllTargets() {
    # Print all pairs on stdout
    for ((i=0; i< ${#pairs[@]}; i+=2));
    do
        local package="${pairs[i]}"
        local target="${pairs[$i+1]}"
        echo "\"$package\" \"$target\""
    done
}


function checkHelp() {
    # Loop through all arguments to check for -h
    # "getopts" is excessive for this scenario
    for arg in "$@"; do
      if [ "$arg" = "-h" ]; then
        echo "Usage: $0 [STOW_PACKAGE_NAME...]"
        exit 0
      fi
    done
}


function main() {
    if [ "$#" -eq 0 ]; then
        getAllTargets
        exit 0
    fi

    checkHelp $@

    for pkg in "$@"; do
        getTargetByPackage "$pkg"
    done
}


main $@

