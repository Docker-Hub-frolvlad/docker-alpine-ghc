[![Docker Stars](https://img.shields.io/docker/stars/frolvlad/alpine-ghc.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-ghc/)
[![Docker Pulls](https://img.shields.io/docker/pulls/frolvlad/alpine-ghc.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-ghc/)


Haskell (ghc) Docker image
==========================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Haskell compiler](https://www.haskell.org/) (ghc package).

Download size of this image is:

[![](https://images.microbadger.com/badges/image/frolvlad/alpine-ghc.svg)](http://microbadger.com/images/frolvlad/alpine-ghc "Get your own image badge on microbadger.com")


Usage Example
-------------

```bash
$ echo -e 'module Main where\nmain = putStrLn "Hello, World!"' > qq.hs
$ docker run --rm -v "$(pwd):/tmp" frolvlad/alpine-ghc ghc -O2 -static -optl-static /tmp/qq.hs -o /tmp/qq
```

Once you have run these commands you will have `qq` executable in your current directory and if you
execute it, you will get printed 'Hello, World!'
