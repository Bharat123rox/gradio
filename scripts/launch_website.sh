#!/bin/bash
if [ -z "$(ls | grep CONTRIBUTING.md)" ]; then
  echo "Please run the script from repo directory"
  exit -1
else
  echo "Building the website"
  pip install -e .
  cd website/homepage
  npm install
  npm run build
  cd dist
  python -m http.server
fi
