# Linux / FOSS Group Linz

## About

The Linux / FOSS Group Linz is a community of Linux and Open Source fans, centered around Linz (Upper Austria).

This repo contains the official website. It is built on Jekyll and deployed to GitHub Pages.

## Developing locally
To avoid having to install tons of dependencies, just run `./develop-in-container.sh` to get dropped into a bash shell in a docker container that has all the packages required installed.

### Installing dependencies
Ruby dependencies have to be re-installed per container instance (they are cached outside of the bound volume).

To do this, run `bundle install` in `/site`

### Serving
Run `bundle exec jekyll serve` in `/site`
