# A Tutorial Implementation of a Dependently Typed Lambda Calculus

This repository contains (partially implemented) code of the referenced paper.

The iHaskell notebook is currently running on https://mybinder.org/v2/gh/Necried/dependent-types-cas781/HEAD
Navigate to cas


## Local execution

### Nix

You must have Nix and `nix-flakes` installed to run the following. For more information,
consult the documentation at https://jupyenv.io/documentation/getting-started/

After cloning the repository, run the following command in the terminal

```shell
nix run
```

and copy the notebook link in the output to your web browser.

### Docker

Alternatively, the provided Dockerfile allows running a Docker container.

Run the following commands:

```shell
docker build -t dep-types-cas781 .
docker run -d -p 8888:8888 --name dep-types-container dep-types-cas781
docker logs dep-types-container
```

and copy the notebook link in the output to your web browser.
