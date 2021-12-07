# Container Images for Trinotate

This repository provides `Dockerfile`s for creating container images
of [Trinotate](https://github.com/Trinotate/Trinotate.github.io/wiki)
using [`conda`](https://docs.conda.io/en/latest/).

Note: I don't know where it is actually documented that _Trinotate_
can be installed via `conda`, but it seems to be a maintained and
supported solution.

## Usage

Built images can be obtained from:

Docker Hub: ...
<br />
Apptainer (Singularity) Image: ...

This section will describe usage with _Apptainer_.

NOTE: [the real "Singularity" was recently renamed to Apptainer.](https://apptainer.org/news/community-announcement-20211130/).
Here, we will refer to it as "Apptainer" for political correctness.

## FAQ

#### Where are the required Trinotate database files?

`/var/local/trinotate/Trinotate.sqlite`

#### Where is `$TRINOTATE_HOME`?

Not applicable. All executable scripts are installed to somewhere in `$PATH`,
so you do not need to prefix script names with an absolute path to run them.

## Building

Requirements: [Docker](https://docs.docker.com/get-docker/)
and [Apptainer/Singularity](https://apptainer.org/).

To build the Singularity image: run

```shell
make trinotate.sif
```

WARNING: you should have sufficient space (idk, maybe like 12 GB) in `/tmp`
in order to build the Singularity container image.
