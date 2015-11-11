# sffmpeg-build

This Docker image will build a static version of `ffmpeg` and some other tools using [github.com/pyke369/sffmpeg](https://github.com/pyke369/sffmpeg).

All the binaries are Linux binaries and will be stored in `/sffmpeg/build/bin`.

You must mount this directory to be get the binaries.

## Usage

The first step is to create a directory for the static binaries:

```
$ mkdir bin
```

Then you can start the build process:

```
$ docker run -v bin:/sffmpeg/build/bin sebest/sffmpeg-build
```

When the container will exit, you should have your Linux binaries in the `bin` directory.
