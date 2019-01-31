# Docker AWS ecs-deploy Image

[![](https://img.shields.io/microbadger/layers/pixelgmbh/docker-ecs-deploy.svg)](https://microbadger.com/images/pixelgmbh/docker-ecs-deploy)
[![](https://img.shields.io/microbadger/image-size/pixelgmbh/docker-ecs-deploy.svg)](https://microbadger.com/images/pixelgmbh/docker-ecs-deploy)
[![](https://img.shields.io/docker/pulls/pixelgmbh/docker-ecs-deploy.svg)](https://hub.docker.com/r/pixelgmbh/docker-ecs-deploy)
[![](https://img.shields.io/github/license/PixelGmbH/docker-ecs-deploy.svg?maxAge=3600)](https://github.com/PixelGmbH/docker-ecs-deploy/blob/master/LICENCE)

This docker container provides you with the necessary tools to use the [ecs-deploy script](https://github.com/silinternational/ecs-deploy) for Amazon ECS _including the docker environment_.

Its useful to have a docker around when moving images before deploying. Also don't forget to specify the `docker:dind` service when using it in a gitlab-ci runner (like I did).

## Structure

It uses the `docker:stable` image as base and the following additional components:

* [AWS-CLI and its dependencies](https://docs.aws.amazon.com/de_de/cli/latest/userguide/awscli-install-linux.html)
* The [ecs-deploy script](https://github.com/silinternational/ecs-deploy)
