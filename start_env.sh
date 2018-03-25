#!/bin/bash

export JEKYLL_VERSION=3.5
exec docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --publish "4000:4000" \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  bash