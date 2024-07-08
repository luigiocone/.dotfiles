#!/usr/bin/env bash


pairs=(
#   key        value
#    /           /
#   package    target
    "git"      "$HOME"
    "zsh"      "$HOME"
    "bash"     "$HOME"
    "vim"      "$HOME/.vim"
    "nvim"     "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
    "myenv"    "${XDG_CONFIG_HOME:-$HOME/.config}/myenv"
    "iterm2"   "${XDG_CONFIG_HOME:-$HOME/.config}/iterm2"
    "scripts"  "$HOME/.local/bin"
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

