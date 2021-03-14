cmake_minimum_required(VERSION 3.0)

project(B_lib)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR})

add_library(
	mylib

	SHARED

	lib.h lib.cpp
)

