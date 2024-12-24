#!/usr/bin/env bash

# Remove existing Brewfile
rm Brewfile

# Recreate Brewfile
brew bundle dump
