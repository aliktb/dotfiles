#!/bin/bash

chmod +x hooks/*

cp hooks/* .git/hooks

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install $(cat brew-packages.txt)
