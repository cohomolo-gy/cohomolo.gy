FROM debian:10

LABEL maintainer="Nate Catelli <ncatelli@packetfire.org>"
LABEL description="A container with hakyll."
LABEL "com.github.actions.name"="Hakyll Actions"
LABEL "com.github.actions.description"="The hakyll build environment for the cohomolo.gy site."

RUN apt-get update && \ 
    apt-get install -y cabal-install zlib1g-dev gcc libc-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]