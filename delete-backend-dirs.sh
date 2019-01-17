#!/bin/bash

# Remove the backend software directories in all model directories in order to allow them
# getting updated to the newest version when training is run.

find . -type d -name FileJsonPyTorch | xargs -n 1 rm -rf
find . -name '*.dsindex' | xargs -n 1 rm -rf
