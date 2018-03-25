#!/bin/bash

exec docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --publish "4000:4000" \
  -it jekyll/jekyll:3.5 \
  bash
