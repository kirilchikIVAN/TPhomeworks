# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/149/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/149/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build

# Include any dependencies generated for this target.
include test/CMakeFiles/delete_tests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/delete_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/delete_tests.dir/flags.make

test/CMakeFiles/delete_tests.dir/delete_tests.cpp.o: test/CMakeFiles/delete_tests.dir/flags.make
test/CMakeFiles/delete_tests.dir/delete_tests.cpp.o: /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo/test/delete_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/delete_tests.dir/delete_tests.cpp.o"
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/delete_tests.dir/delete_tests.cpp.o -c /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo/test/delete_tests.cpp

test/CMakeFiles/delete_tests.dir/delete_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/delete_tests.dir/delete_tests.cpp.i"
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo/test/delete_tests.cpp > CMakeFiles/delete_tests.dir/delete_tests.cpp.i

test/CMakeFiles/delete_tests.dir/delete_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/delete_tests.dir/delete_tests.cpp.s"
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo/test/delete_tests.cpp -o CMakeFiles/delete_tests.dir/delete_tests.cpp.s

# Object files for target delete_tests
delete_tests_OBJECTS = \
"CMakeFiles/delete_tests.dir/delete_tests.cpp.o"

# External object files for target delete_tests
delete_tests_EXTERNAL_OBJECTS =

bin/delete_tests: test/CMakeFiles/delete_tests.dir/delete_tests.cpp.o
bin/delete_tests: test/CMakeFiles/delete_tests.dir/build.make
bin/delete_tests: lib/libtest_server.a
bin/delete_tests: lib/libgtest.a
bin/delete_tests: lib/libcpr.a
bin/delete_tests: lib/libmongoose.a
bin/delete_tests: lib/libcurl.so
bin/delete_tests: /usr/lib/x86_64-linux-gnu/libssl.so
bin/delete_tests: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/delete_tests: /usr/lib/x86_64-linux-gnu/libz.so
bin/delete_tests: test/CMakeFiles/delete_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/delete_tests"
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/delete_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/delete_tests.dir/build: bin/delete_tests

.PHONY : test/CMakeFiles/delete_tests.dir/build

test/CMakeFiles/delete_tests.dir/clean:
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test && $(CMAKE_COMMAND) -P CMakeFiles/delete_tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/delete_tests.dir/clean

test/CMakeFiles/delete_tests.dir/depend:
	cd /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo/test /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test /home/kirilchik/TechProg/Task4/task/task4/cmake-build-debug/cpr_repo-prefix/src/cpr_repo-build/test/CMakeFiles/delete_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/delete_tests.dir/depend

