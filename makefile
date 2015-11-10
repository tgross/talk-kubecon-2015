MAKEFLAGS += --warn-undefined-variables
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail
.DEFAULT_GOAL := build

.PHONY: build ship

# build a Docker container image
build:
	docker build -t="talk" .

# ship container w/ Node static file server so we can quickly share it
# as a Docker container
ship:
	docker tag -f talk 0x74696d/containerdaysnyc2015
	docker push 0x74696d/containerdaysnyc2015

# open in local browser
show:
	open file://$(shell pwd)/index.html
