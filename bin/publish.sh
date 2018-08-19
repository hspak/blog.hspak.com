#!/bin/bash

git checkout master
hugo
git checkout gh-pages
cp -r public/* ./ && rm -r public
git add .
git commit -m 'publish'
git push
