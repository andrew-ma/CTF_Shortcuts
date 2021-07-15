##### Aliases #####
alias ciphey="docker run -it --rm remnux/ciphey"

alias steg="docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v \"$(pwd)/data:/data\" dominicbreuker/stego-toolkit /bin/bash"

alias bw="binwalk -e -D=\".*\""

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"


##### Environment Variables ####
# Add current file's path to PATH
export PATH="$(realpath $(dirname $0)):$PATH"

##### Commands ####
# Make CAPS to ESC
setxkbmap -option "caps:swapescape"

# Make display work for 'steg' alias
xhost +"local:docker@" > /dev/null
