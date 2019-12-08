#!/bin/bash
set -e

cabal install

sh -c "cabal $*"
