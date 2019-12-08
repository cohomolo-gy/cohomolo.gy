FROM alpine:3.7

LABEL maintainer="Nate Catelli <ncatelli@packetfire.org>"
LABEL description="A container with hakyll."
LABEL "com.github.actions.name"="Hakyll Actions"
LABEL "com.github.actions.description"="The hakyll build environment for the cohomolo.gy site."

RUN apk add --no-cache ghc cabal gcc libc-dev zlib-dev && \ 
    cabal update && \
    cabal install hakyll

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]