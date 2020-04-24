#!/bin/bash

echo "Checking for $HOME/.beersmith3 directory"
if [ ! -d "$HOME/.beersmith3" ]; then
    echo "Creating $HOME/.beersmith3 directory"
    mkdir $HOME/.beersmith3
else
    echo "$HOME/.beersmith3 directory already exists"
fi

docker run -ti --rm -e DISPLAY=$DISPLAY -u $UID:`id -g $USER` \
    -v $HOME/.beersmith3:/home/beersmith3/.beersmith3 \
    -v $HOME/Documents:/home/beersmith2/Documents \
    -v /var/run/cups/cups.sock:/var/run/cups/cups.sock \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev/snd:/dev/snd:rw \
    fooblahblah/beersmith3:latest
