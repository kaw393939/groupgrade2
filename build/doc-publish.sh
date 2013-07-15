#!/bin/bash

# Build the documentation
apigen -c build/apigen.neon

# Move to a folder outside GIT
if [-d ../groupgrade-docs]; then
  rm -rf ../groupgrade-docs;
fi

mv build/docs/ ../groupgrade-docs

git checkout gh-pages
rm -rf *

mv ../groupgrade-docs/* ./
