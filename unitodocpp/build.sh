#!/usr/bin/env bash

# Copyright (c) 2015, Adel Noureddine.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the BSD 3-Clause License
# which accompanies this distribution, and is available at
# https://opensource.org/licenses/BSD-3-Clause
#
# Author : Adel Noureddine

rm -rf ./build/
mkdir build
cd build
cmake ..
make
cd ..