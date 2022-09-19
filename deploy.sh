#!/usr/bin/env sh
# abort on errors
set -e
cd website
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:SeojinK1m/washu-fencing.git main:prod
cd -