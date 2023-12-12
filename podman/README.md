# How to install Podman with Docker Compose on MacOS

### Prerequesites

- Install [Homebrew](https://brew.sh/)

- Uninstall Docker Desktop (else this may conflict with Docker compose as we are going to install it separately)

### Install

To install, simply run the following line in a terminal window:

```bash
NONINTERACTIVE=1 /bin/bash -c \
   "$(curl -fsSL \
    https://raw.githubusercontent.com/aliktb/useful-tools/main/podman/install-on-mac.sh)"
```

### Credits

This script was inspired by the gist [podman_macos.md](https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3)
