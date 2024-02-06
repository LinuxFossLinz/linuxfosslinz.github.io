#!/bin/bash

#docker run -it --rm -v "$PWD":/srv/jekyll -p 4000:4000 jekyll/jekyll:builder bash
docker run -v "$PWD":/site -it --rm --entrypoint bash -p 4000:4000 bretfisher/jekyll
