##### Aliases #####
alias ciphey="docker run -it --rm remnux/ciphey"

alias steg="docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v \"$(pwd)/data:/data\" dominicbreuker/stego-toolkit /bin/bash"

alias bw="binwalk -e -D=\".*\""

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"


##### Environment Variables #####
# Add current file's path to PATH
export PATH="$(realpath $(dirname $0)):$PATH"


##### Functions #####
# Use string on right side with 'base64' command
# Defaults to decode string
# Encodes if "-e"
b64 () { if [ "$1" = "-d" ]; then decFlag="-d"; shift; elif [ "$1" = "-e" ]; then decFlag=""; else decFlag="-d"; fi; if [ -z "$1" ]; then echo "b64 [-e/-d] string"; return; fi; arg1="$1"; shift; echo "$arg1" | base64 $decFlag "$@"; }


##### Commands #####
# Make CAPS to ESC
# setxkbmap -option "caps:swapescape"

# Make display work for 'steg' alias
xhost +"local:docker@" > /dev/null

