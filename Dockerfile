FROM frolvlad/alpine-gcc

# NOTE: Compilation fails without libffi-dev package:
# /usr/lib/gcc/x86_64-alpine-linux-musl/11.2.1/../../../../x86_64-alpine-linux-musl/bin/ld: cannot find -lffi: No such file or directory
RUN apk add --no-cache ghc libffi-dev
