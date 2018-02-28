## Contents

This repo contains a Dockerfile that can be used for building and debugging with gcc on Centos 6.9 with valgrind and gdb.

## Build the Docker the image manually
After the repo has been cloned, the following command can be used 
to build the development image:

```
$ docker  build -t ruijzndl/centos-dev-pack:6.9 .
```

## Use the Docker the image manually

Open a terminal into your container to use gcc/valgrind.

```
$ docker run --rm -it -v $(pwd):/data -w /data ruijzndl/ius-dev-pack:centos6.9 bash
```
