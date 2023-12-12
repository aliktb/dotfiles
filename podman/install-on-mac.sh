#!/bin/bash

## Credits
## User https://github.com/kaaquist
## from gist https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3

brew install podman --quiet

## Set VM with minium 4GB memory
## Needed to to opensearch
## https://opensearch.org/docs/latest/install-and-configure/install-opensearch/docker/#install-docker-and-docker-compose
podman machine init --memory 4096
podman machine start

## Install mac helper
## Permission issues when creating volumes without this
## https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3?permalink_comment_id=4317135#gistcomment-4317135
sudo /usr/local/bin/podman-mac-helper install

## Create symlink to run Podman with Docker command
ln -s /usr/local/bin/podman /usr/local/bin/docker


brew install docker-compose --quiet

## Get the port from the ssh destinations
## https://docs.podman.io/en/stable/markdown/podman-system-connection-list.1.html
PODMAN_PORT=$(podman system connection ls -f='{{.URI}}' | head -n 1 | sed -e 's/.*127.0.0.1:\(.*\)\/run.*/\1/')

## Get the user ID for the socket (may not always be 1000)
PODMAN_UID=$(podman system connection ls -f='{{.URI}}' | head -n 1 | sed -e 's/.*user\/\(.*\)\/podman\/podman.sock.*/\1/')

ssh -fnNT -L/tmp/podman.sock:/run/user/$PODMAN_UID/podman/podman.sock -i ~/.ssh/podman-machine-default ssh://core@localhost:$PODMAN_PORT -o StreamLocalBindUnlink=yes


## Append DOCKER_HOST variable to .zshrc if it doesn't exist
grep -qxF "export DOCKER_HOST='unix:///tmp/podman.sock'" ~/.zshrc || echo "export DOCKER_HOST='unix:///tmp/podman.sock'" >> ~/.zshrc
