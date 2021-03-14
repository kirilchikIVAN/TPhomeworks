cmake_minimum_required(VERSION 3.0)

project(sumtask)


include_directories(${CMAKE_SOURCE_DIR})


execute_process(
        COMMAND python3 preparing.py
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/A
)

add_subdirectory(${PROJECT_SOURCE_DIR}/B)


set(SOURCES B/lib.cpp C/main.cpp)
set(LIBSOURCES A/index.h B/lib.h B/lib.cpp C/main.h)


set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)


add_executable(C ${SOURCES})
add_library(mainlib SHARED ${LIBSOURCES})

