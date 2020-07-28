# docker-nanominer

This repo manages the files to build the [jisley/nanominer](https://hub.docker.com/repository/docker/jisley/nanomine) docker image.

Forked from https://github.com/dmcanally/docker-nanominer

https://hub.docker.com/repository/docker/jisleyjr/nanomine

Feel free to use/fork/etc.

## Usage
### Basic Usage
**Be sure to change the config.ini to contain your wallet and email.**
```bash
docker run -d -v ${PWD}/config.ini:/nanominer/config.ini jisleyjr/nanominer
```
