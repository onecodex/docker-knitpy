# onecodex/docker-knitpy

## Installation and Usage

    docker pull quay.io/refgenomics/docker-knitpy
    docker run -i -t quay.io/refgenomics/docker-knitpy

## Included Tools/Patches

* `bats`: The [Bats](https://github.com/sstephenson/bats) Bash Automated Testing System
* `git`: Git Version Control System.
* `knitpy` as of January 2016
* Scientific Python install (IPython, pandas, NumPy, matplotlib, etc.)

## Tests
Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

Copyright (c) 2016 [Reference Genomics, Inc.](https://www.onecodex.com), [Nick Greenfield](https://github.com/boydgreenfield), and contributors.
