#!/bin/sh
set -e
set -u

PATH="${PATH}:/opt/mdbook" rake build
