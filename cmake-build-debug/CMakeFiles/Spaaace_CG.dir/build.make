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
include CMakeFiles/Spaaace_CG.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Spaaace_CG.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Spaaace_CG.dir/flags.make

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o: ../Engine/engine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp > CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.i

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Engine/engine.cpp -o CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.s

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o: ../Generator/generator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/generator.cpp

CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/generator.cpp > CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/generator.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o: ../Generator/box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/box.cpp

CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/box.cpp > CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/box.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o: ../Generator/plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/plane.cpp

CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/plane.cpp > CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/plane.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o: ../Generator/vertex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp

CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp > CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/vertex.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o: ../Generator/sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/sphere.cpp

CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/sphere.cpp > CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/sphere.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o


CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o: ../tinyxml2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp

CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp > CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.i

CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/tinyxml2.cpp -o CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.s

CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o


CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o: ../Generator/cone.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Generator/cone.cpp

CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Generator/cone.cpp > CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.i

CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Generator/cone.cpp -o CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.s

CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o


CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o: CMakeFiles/Spaaace_CG.dir/flags.make
CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o: ../Engine/shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o -c /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp

CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp > CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.i

CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoda45/Desktop/git/Spaaace-CG/Engine/shape.cpp -o CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.s

CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.requires:

.PHONY : CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.requires

CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.provides: CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spaaace_CG.dir/build.make CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.provides.build
.PHONY : CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.provides

CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.provides.build: CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o


# Object files for target Spaaace_CG
Spaaace_CG_OBJECTS = \
"CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o" \
"CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o"

# External object files for target Spaaace_CG
Spaaace_CG_EXTERNAL_OBJECTS =

Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/build.make
Spaaace_CG: /usr/lib/x86_64-linux-gnu/libGLU.so
Spaaace_CG: /usr/lib/x86_64-linux-gnu/libGL.so
Spaaace_CG: /usr/lib/x86_64-linux-gnu/libglut.so
Spaaace_CG: CMakeFiles/Spaaace_CG.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable Spaaace_CG"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Spaaace_CG.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Spaaace_CG.dir/build: Spaaace_CG

.PHONY : CMakeFiles/Spaaace_CG.dir/build

CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Engine/engine.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/generator.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/box.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/plane.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/vertex.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/sphere.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/tinyxml2.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Generator/cone.cpp.o.requires
CMakeFiles/Spaaace_CG.dir/requires: CMakeFiles/Spaaace_CG.dir/Engine/shape.cpp.o.requires

.PHONY : CMakeFiles/Spaaace_CG.dir/requires

CMakeFiles/Spaaace_CG.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Spaaace_CG.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Spaaace_CG.dir/clean

CMakeFiles/Spaaace_CG.dir/depend:
	cd /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yoda45/Desktop/git/Spaaace-CG /home/yoda45/Desktop/git/Spaaace-CG /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug /home/yoda45/Desktop/git/Spaaace-CG/cmake-build-debug/CMakeFiles/Spaaace_CG.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Spaaace_CG.dir/depend

