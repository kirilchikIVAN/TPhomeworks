cmake_minimum_required(VERSION 3.0)

project(B_lib)

add_library(
	mylibrary

	SHARED

	lib.h lib.cpp
)

