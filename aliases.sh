##### Aliases #####
alias ciphey="docker run -it --rm remnux/ciphey"

alias killCiphey="kill -9 `ps aux | grep 'remnux/ciphey' | head -n1 | awk '{print $2}'`"

alias bw="binwalk -e -D=\".*\""

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"


##### Environment Variables #####
# Add current file's directory to PATH if it is not found in PATH already
SCRIPT_DIR=$(realpath $(dirname $0))

if [[ "$PATH" == *"$SCRIPT_DIR"* ]]; then : ; else export PATH="$SCRIPT_DIR:$PATH"; fi


##### Functions #####
# Use string on right side with 'base64' command
# Defaults to decode string
# Encodes if "-e"
b64 () { if [ "$1" = "-d" ]; then decFlag="-d"; shift; elif [ "$1" = "-e" ]; then decFlag=""; else decFlag="-d"; fi; if [ -z "$1" ]; then echo "b64 [-e/-d] string"; return 1; fi; arg1="$1"; shift; echo "$arg1" | base64 $decFlag "$@"; }

b64py () { if [ -z "$1" ]; then echo "Usage: $0 <base64String>"; return 1; fi; echo "You entered: '$1'"; python3 -c "import base64; x=base64.b64decode('$1'); print(x.decode())"; }

steg () { [ ! -d "/path/to/dir" ] && mkdir -p data && docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "$(pwd)/data:/data" dominicbreuker/stego-toolkit /bin/bash; }


##### Commands #####
# Make CAPS to ESC
# setxkbmap -option "caps:swapescape"

# Make display work for 'steg' alias
xhost +"local:docker@" > /dev/null 2>&1

echo "Sourced \"$0\" successfully"
