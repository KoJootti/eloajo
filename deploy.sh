#!/bin/sh

if [ "`git status -s`" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
git submodule update --init --recursive --depth=1
hugo --minify


