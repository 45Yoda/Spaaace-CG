# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/yoda45/Downloads/clion-2017.3.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/yoda45/Downloads/clion-2017.3.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yoda45/Desktop/git/Spaaace-CG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/engine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/engine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/engine.dir/flags.make

CMakeFiles/engine.dir/Engine/engine.cpp.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/Engine/engine.cpp.o: ../Engine/engine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/engine.dir/Engine/engine.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/engine.dir/Engine/engine.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp

CMakeFiles/engine.dir/Engine/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/engine.dir/Engine/engine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp > CMakeFiles/engine.dir/Engine/engine.cpp.i

CMakeFiles/engine.dir/Engine/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/engine.dir/Engine/engine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp -o CMakeFiles/engine.dir/Engine/engine.cpp.s

CMakeFiles/engine.dir/Engine/engine.cpp.o.requires:

.PHONY : CMakeFiles/engine.dir/Engine/engine.cpp.o.requires

CMakeFiles/engine.dir/Engine/engine.cpp.o.provides: CMakeFiles/engine.dir/Engine/engine.cpp.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/Engine/engine.cpp.o.provides.build
.PHONY : CMakeFiles/engine.dir/Engine/engine.cpp.o.provides

CMakeFiles/engine.dir/Engine/engine.cpp.o.provides.build: CMakeFiles/engine.dir/Engine/engine.cpp.o


CMakeFiles/engine.dir/Engine/shape.cpp.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/Engine/shape.cpp.o: ../Engine/shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/engine.dir/Engine/shape.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/engine.dir/Engine/shape.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp

CMakeFiles/engine.dir/Engine/shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/engine.dir/Engine/shape.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp > CMakeFiles/engine.dir/Engine/shape.cpp.i

CMakeFiles/engine.dir/Engine/shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/engine.dir/Engine/shape.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp -o CMakeFiles/engine.dir/Engine/shape.cpp.s

CMakeFiles/engine.dir/Engine/shape.cpp.o.requires:

.PHONY : CMakeFiles/engine.dir/Engine/shape.cpp.o.requires

CMakeFiles/engine.dir/Engine/shape.cpp.o.provides: CMakeFiles/engine.dir/Engine/shape.cpp.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/Engine/shape.cpp.o.provides.build
.PHONY : CMakeFiles/engine.dir/Engine/shape.cpp.o.provides

CMakeFiles/engine.dir/Engine/shape.cpp.o.provides.build: CMakeFiles/engine.dir/Engine/shape.cpp.o


CMakeFiles/engine.dir/tinyxml2.cpp.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/tinyxml2.cpp.o: ../tinyxml2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/engine.dir/tinyxml2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/engine.dir/tinyxml2.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp

CMakeFiles/engine.dir/tinyxml2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/engine.dir/tinyxml2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp > CMakeFiles/engine.dir/tinyxml2.cpp.i

CMakeFiles/engine.dir/tinyxml2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/engine.dir/tinyxml2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp -o CMakeFiles/engine.dir/tinyxml2.cpp.s

CMakeFiles/engine.dir/tinyxml2.cpp.o.requires:

.PHONY : CMakeFiles/engine.dir/tinyxml2.cpp.o.requires

CMakeFiles/engine.dir/tinyxml2.cpp.o.provides: CMakeFiles/engine.dir/tinyxml2.cpp.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/tinyxml2.cpp.o.provides.build
.PHONY : CMakeFiles/engine.dir/tinyxml2.cpp.o.provides

CMakeFiles/engine.dir/tinyxml2.cpp.o.provides.build: CMakeFiles/engine.dir/tinyxml2.cpp.o


CMakeFiles/engine.dir/Generator/vertex.cpp.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/Generator/vertex.cpp.o: ../Generator/vertex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/engine.dir/Generator/vertex.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/engine.dir/Generator/vertex.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp

CMakeFiles/engine.dir/Generator/vertex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/engine.dir/Generator/vertex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp > CMakeFiles/engine.dir/Generator/vertex.cpp.i

CMakeFiles/engine.dir/Generator/vertex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/engine.dir/Generator/vertex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp -o CMakeFiles/engine.dir/Generator/vertex.cpp.s

CMakeFiles/engine.dir/Generator/vertex.cpp.o.requires:

.PHONY : CMakeFiles/engine.dir/Generator/vertex.cpp.o.requires

CMakeFiles/engine.dir/Generator/vertex.cpp.o.provides: CMakeFiles/engine.dir/Generator/vertex.cpp.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/Generator/vertex.cpp.o.provides.build
.PHONY : CMakeFiles/engine.dir/Generator/vertex.cpp.o.provides

CMakeFiles/engine.dir/Generator/vertex.cpp.o.provides.build: CMakeFiles/engine.dir/Generator/vertex.cpp.o


# Object files for target engine
engine_OBJECTS = \
"CMakeFiles/engine.dir/Engine/engine.cpp.o" \
"CMakeFiles/engine.dir/Engine/shape.cpp.o" \
"CMakeFiles/engine.dir/tinyxml2.cpp.o" \
"CMakeFiles/engine.dir/Generator/vertex.cpp.o"

# External object files for target engine
engine_EXTERNAL_OBJECTS =

engine: CMakeFiles/engine.dir/Engine/engine.cpp.o
engine: CMakeFiles/engine.dir/Engine/shape.cpp.o
engine: CMakeFiles/engine.dir/tinyxml2.cpp.o
engine: CMakeFiles/engine.dir/Generator/vertex.cpp.o
engine: CMakeFiles/engine.dir/build.make
engine: /usr/lib/x86_64-linux-gnu/libGLU.so
engine: /usr/lib/x86_64-linux-gnu/libGL.so
engine: /usr/lib/x86_64-linux-gnu/libglut.so
engine: CMakeFiles/engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable engine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/engine.dir/build: engine

.PHONY : CMakeFiles/engine.dir/build

CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/Engine/engine.cpp.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/Engine/shape.cpp.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/tinyxml2.cpp.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/Generator/vertex.cpp.o.requires

.PHONY : CMakeFiles/engine.dir/requires

CMakeFiles/engine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/engine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/engine.dir/clean

CMakeFiles/engine.dir/depend:
	cd /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yoda45/Desktop/git/Spaaace-CG /home/yoda45/Desktop/git/Spaaace-CG /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles/engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/engine.dir/depend
