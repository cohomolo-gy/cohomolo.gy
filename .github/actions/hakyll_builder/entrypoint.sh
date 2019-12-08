#!/bin/bash
set -e

cabal update
cabal install

sh -c "cabal $*"
