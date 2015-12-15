# Copyright (c) 2015, Adel Noureddine.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the BSD 3-Clause License
# which accompanies this distribution, and is available at
# https://opensource.org/licenses/BSD-3-Clause
#
# Author : Adel Noureddine

cmake_minimum_required(VERSION 3.3)
project(unitodocpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp)
add_executable(unitodocpp ${SOURCE_FILES})