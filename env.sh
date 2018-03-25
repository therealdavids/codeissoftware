#!/bin/bash

exec docker run --rm \
  --volume="$PWD:/site" \
  --publish "4000:4000" \
  -it andredumas/github-pages \
  $@
