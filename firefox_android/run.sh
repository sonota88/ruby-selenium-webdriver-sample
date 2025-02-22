#!/bin/bash

print_this_dir() {
  (
    cd "$(dirname "$0")"
    pwd
  )
}

__DIR__="$(print_this_dir)"

# https://github.com/mozilla/geckodriver/releases
export PATH="${__DIR__}/geckodriver-v0.35.0-linux64:${PATH}"

bundle exec ruby sample.rb
