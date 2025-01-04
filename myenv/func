#!/usr/bin/env bash

# Show the common usages of a command (similar to 'tldr')
function cheat() {
    curl cheat.sh/$1 | less -R
}

# Add to PATH only if not already in it
function addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

function addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

# Search a file/directory starting from home and go to that dir
function cds() {
    selected=$(home)
    if [ ! -d $selected ]; then
        selected=$(dirname $selected)
    fi
    pushd $selected
}

