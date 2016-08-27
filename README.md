# Hashiconf 2016 Demo

[![Build Status](https://travis-ci.org/timperrett/hashiconf-2016-demo.svg?branch=master)](https://travis-ci.org/timperrett/hashiconf-2016-demo)

This repository contains the small demo job used for my Hashiconf 2016 demo. It is not intended to be a particularly interesting demo project, but instead to demonstrate the workflow that *Nelson* enables.

## Development

1. `brew install go` - install the Go programming language:
1. `go get github.com/constabulary/gb` - install the `gb` build tool
1. `go get github.com/codeskyblue/fswatch` - install `fswatch` so we can do continous compilation
1. `alias fswatch="$GOPATH/bin/fswatch"
1. `fswatch`

This should give continous compilation without the tedious need to constantly restart `gb build`.
