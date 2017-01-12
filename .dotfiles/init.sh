#!/usr/bin/env bash
git init
git remote add origin https://github.com/hoshy/dotfiles.git
git fetch
git checkout -t -f origin/master
