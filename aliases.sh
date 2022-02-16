##### Aliases #####
alias ciphey="docker run -it --rm remnux/ciphey"

alias killCiphey="kill -9 `ps aux | grep 'remnux/ciphey' | head -n1 | awk '{print $2}'`"

alias bw="binwalk -e -D=\".*\""

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

# command | copy
# to copy to clipboard
alias copy='xclip -selection clipboard'

# command | copyline
# to copy to clipboard as single line with newlines changed to spaces
alias copyoneline='xargs echo -n | xclip -selection clipboard'

# to copy to clipboard as single line with newlines substituted with literal '\n'
function copynewline () {
  awk '{printf "%s\\n", $0}' | xclip -selection clipboard
}

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

steg () { { [ ! -d "data" ] && mkdir -p data; }; docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "$(pwd)/data:/data" dominicbreuker/stego-toolkit /bin/bash; }

pyrdp () { { [ ! -d "pyrdp" ] && mkdir -p pyrdp; }; docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "$(pwd)/pyrdp:/pyrdp" gosecure/pyrdp /bin/bash; }

shared_mount () { sudo mkdir -p /mnt/hgfs && sudo /usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs/ -o subtype=vmhgfs-fuse,allow_other; }

shared_unmount () { sudo umount /mnt/hgfs; }

swap_caps() { setxkbmap -option "caps:swapescape"; }

restore_caps() { setxkbmap -option; }

unziptop() { unzip -d "$(basename "$1" .zip)" "$1" }


##### Commands #####

# Make display work for 'steg' alias
xhost +"local:docker@" > /dev/null 2>&1

echo "Sourced \"$0\" successfully"
