# Container Images for Trinotate

This repository provides a container image with
[Trinotate](https://github.com/Trinotate/Trinotate.github.io/wiki)
installed using [`conda`](https://docs.conda.io/en/latest/).

NOTE: [the real "Singularity" was recently renamed to **Apptainer**.](https://apptainer.org/news/community-announcement-20211130/).
Here, we will refer to it as "Apptainer" for political correctness.

## Obtaining

OCI images can be obtained from https://hub.docker.com/r/jennydaman/trinotate

Apptainer image can be found under
[Releases](https://github.com/jennydaman/trinotate-docker/releases).

## FAQ

#### Where is `$TRINOTATE_HOME`?

Not applicable. All executable scripts are installed to somewhere in `$PATH`,
so you do not need to prefix script names with an absolute path to run them.

## Building

NOTE: I don't know where it is actually documented that _Trinotate_
can be installed via `conda`, but it seems to be a maintained and
supported solution.

Requirements: [Docker](https://docs.docker.com/get-docker/)
and [Apptainer/Singularity](https://apptainer.org/).

To build the Singularity image: run

```shell
make
```

WARNING: you should have sufficient space (idk, maybe like 12 GB) in `/tmp`
in order to build the Singularity container image.
