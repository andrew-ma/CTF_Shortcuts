### This is for holding a few of my shortcuts because I don't like typing something more than 5 times

# bashrc

One of my favorite tools is ciphey to auto crack ciphers
I added this alias to .bashrc
```
alias ciphey="docker run -it --rm remnux/ciphey"
```

Alias for steganography toolkit (might have to run this command before X11 works 'xhost +"local:docker@"')
```
alias steg="docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v \"$(pwd)/data:/data\" dominicbreuker/stego-toolkit /bin/bash"

```

Alias for binwalk
```
alias bw="binwalk -e -D=\".*\""
```


Alias for doing rot13
```
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
```


Here is for swapping caps and escape
```
setxkbmap -option "caps:swapescape"
```


Here is for adding ~/.local/bin to PATH, and where I normally add my custom executables
```
PATH=$PATH:/home/kali/.local/bin
```


Also, java is used in a few tools like Ghidra and apktool, so this is what I added to .bashrc
```
JAVA_HOME=/usr/lib/jvm/jdk-11.0.8
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/jvm/jdk-11.0.8/lib:/usr/lib/jvm/jdk-11.0.8/lib/server
```



# Scripts

I have the killCiphey script to find the ciphey process and kill it (in case it hangs)

I have a base64 decode script, but it turns out you can do `echo 'mybase64string' | base64 -d`


The sf script is mainly to run a few tools like 'file', 'strings', and 'exiftool'
to generate the output and possibly pick some low end fruit with regex pattern search
