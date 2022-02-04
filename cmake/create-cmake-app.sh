#!/bin/bash

PROJNAME=$1

if [ -z "$PROJNAME" ]
then
    echo "Usage: ./create-cmake-app.sh <PROJECT NAME>"
    exit 999
fi

CMAKE1='cmake_minimum_required(VERSION 3.17.1)'
CMAKE2="project($PROJNAME C CXX)"
CMAKE3='set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 99)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER Predefined)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DRELEASE")

if(UNIX AND NOT APPLE)
    if($ENV{CLION_IDE})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fsanitize=leak -g")
    endif()
endif()

# --- src ------------------------------------------
set(SRC_DIR "${CMAKE_SOURCE_DIR}/src")

file(GLOB_RECURSE src
    ${SRC_DIR}/*.cpp
    ${SRC_DIR}/*.hpp
    ${SRC_DIR}/*.h
    ${SRC_DIR}/*.vert
    ${SRC_DIR}/*.frag
)

source_group(TREE ${CMAKE_SOURCE_DIR} FILES ${src})

set(tgt_inc)

# --- exe ------------------------------------------
add_executable(${PROJECT_NAME} ${src})
set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME})
target_include_directories(${PROJECT_NAME} PUBLIC ${tgt_inc})
target_link_libraries(${PROJECT_NAME})

target_precompile_headers(${PROJECT_NAME} PUBLIC
    <vector>
    <string>
    <map>
    <unordered_map>
    <memory>
    <iostream>
    <stdio.h>
    <fstream>
    <sstream>
    <algorithm>
)
source_group("Precompile Header File" FILES "${CMAKE_SOURCE_DIR}/build/CMakeFiles/${PROJECT_NAME}.dir/cmake_pch.cxx")'

MAIN='#include <iostream>

int main(int argc, char** argv) {
    // Code goes here.
    return 0;
}'

rm -rf src CMakeLists.txt

mkdir -p $PROJNAME/src
echo "$MAIN" > $PROJNAME/src/main.cpp
echo "$CMAKE1" >> $PROJNAME/CMakeLists.txt
echo "$CMAKE2" >> $PROJNAME/CMakeLists.txt
echo "$CMAKE3" >> $PROJNAME/CMakeLists.txt
