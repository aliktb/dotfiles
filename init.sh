#!/bin/bash

chmod +x hooks/*

cp hooks/* .git/hooks

brew install $(cat brew-packages.txt)
