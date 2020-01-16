# beersmith-docker
Scripts to run Beersmith 2.3 in Docker on Linux

### Dockerfile
This Dockerfile was used to build the [docker image](https://hub.docker.com/r/bpeters504/beersmith2/ "https://hub.docker.com/r/bpeters504/beersmith2/").

There is no need to build the docker image yourself, you can just get it from the dockerhub repo by running beersmith2.sh

### beersmith2.sh
This is the script you should use to start beersmith. The first time you run it, it will download the docker image. From then on, it will run it locally. The image is several hundred MB, so depending on your connection it could take a bit. But again, that's only the first time.

If you have docker installed, just run the beersmith2.sh script. It can be downloaded from github at [bpeters504/beersmith-docker](https://github.com/bpeters504/beersmith-docker "https://github.com/bpeters504/beersmith-docker")
