#!/usr/bin/env bash
set -ex

# ensure we're up to date
git pull origin master

# bump version
version=`cat VERSION`
echo "version: $version"

# tag it
git add -A
git commit -m "Increased release version number to $version"
git tag -a "v$version" -m "Release version $version"
git push origin master
git push --tags

