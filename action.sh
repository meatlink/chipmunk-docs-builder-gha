#!/bin/sh
set -e
set -u

rake build
PATH="${PATH}:/opt/mdbook" rake book
