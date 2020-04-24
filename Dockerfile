FROM ubuntu:18.04

ADD https://s3.amazonaws.com/beersmith-3/BeerSmith-3.0.9_amd64.deb /tmp/
RUN apt update && \
  apt install -y /tmp/BeerSmith-3.0.9_amd64.deb && \
  apt install -y libcanberra-gtk-module && \
  apt install -y libwebkitgtk-dev && \
  apt clean && \
  mkdir -p /home/beersmith3/.beersmith3 && \
  chmod 777 -R /home/beersmith3

ENV HOME /home/beersmith3
CMD /usr/bin/beersmith3