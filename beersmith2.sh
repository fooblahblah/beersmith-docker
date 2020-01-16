#!/bin/bash

echo "Checking for $HOME/.beersmith2 directory"
if [ ! -d "$HOME/.beersmith2" ]; then
    echo "Creating for $HOME/.beersmith2 directory"
    mkdir $HOME/.beersmith2
else
    echo "$HOME/.beersmith2 directory already exists"
fi

docker run -ti --rm -e DISPLAY=$DISPLAY -u $UID:`id -g $USER` \
    -v $HOME/.beersmith2:/home/beersmith2/.beersmith2 \
    -v $HOME/Documents:/home/beersmith2/Documents \
    -v /var/run/cups/cups.sock:/var/run/cups/cups.sock \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev/snd:/dev/snd:rw \
    bpeters504/beersmith2:latest
