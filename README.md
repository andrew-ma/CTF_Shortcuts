### This is for holding a few of my shortcuts because I don't like typing something more than 5 times
# Automatic
```
git clone https://github.com/andrew-ma/CTF_Shortcuts ~/CTF_Shortcuts

source ~/CTF_Shortcuts/aliases.sh
```

---
# Manual

`sf` runs 'file', 'strings', and 'exiftool' and greps for flags using regex
```
sf {FILENAME}
sf {FILENAME} [optional_suffix]
sf clean
sf cleanall
```


Ciphey to auto crack ciphers (https://github.com/Ciphey/Ciphey)
- `killCiphey` finds the ciphey process and kills it (in case it hangs)
```
ciphey -t {ENCRYPTED_STRING}
```

stego-toolkit (https://github.com/DominicBreuker/stego-toolkit)
> may have to run `xhost +"local:docker@"` first for X11 to work
```
steg
```

Binwalk
```
bw {FILENAME}
```


Rot13
```
rot13
```


B64 Function
- easier than running: `echo 'mybase64string' | base64 -d`
- alternatively, `b64py` runs python3 to decode a base64 string
```
b64 {STRING_TO_DECODE}

b64 -e {STRING_TO_ENCODE}
```


Swapping caps and escape keys
```
setxkbmap -option "caps:swapescape"
```


Adding ~/.local/bin to PATH, and where I normally add my custom executables
```
export PATH="$PATH:~/.local/bin"
```


Java is used in a few tools like Ghidra and apktool, so we can set JAVA environment variables
```
export JAVA_HOME="/usr/lib/jvm/jdk-11.0.8"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib/jvm/jdk-11.0.8/lib:/usr/lib/jvm/jdk-11.0.8/lib/server"
```
