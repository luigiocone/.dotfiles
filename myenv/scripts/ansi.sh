#!/usr/bin/env bash

# ANSI escape codes for colors and text styles
ANSI_RESET="\e[0m"
ANSI_BOLD="\e[1m"
ANSI_UNDERLINE="\e[4m"
ANSI_INVERSE="\e[7m"

# Foreground
ANSI_FG_CYAN="\e[32m"
ANSI_FG_RED="\e[31m"
ANSI_FG_GREEN="\e[32m"
ANSI_FG_YELLOW="\e[33m"
ANSI_FG_BLUE="\e[34m"
ANSI_FG_MAGENTA="\e[35m"
ANSI_FG_CYAN="\e[36m"
ANSI_FG_WHITE="\e[37m"

# Background
ANSI_BG_BLACK="\e[40m"
ANSI_BG_RED="\e[41m"
ANSI_BG_GREEN="\e[42m"
ANSI_BG_YELLOW="\e[43m"
ANSI_BG_BLUE="\e[44m"
ANSI_BG_MAGENTA="\e[45m"
ANSI_BG_CYAN="\e[46m"
ANSI_BG_WHITE="\e[47m"

# Example usage:
# echo -e "${ANSI_BOLD}${ANSI_FOREGROUND_GREEN}Hello${ANSI_RESET}"

