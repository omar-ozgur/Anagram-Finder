# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.3.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/oozgur/Desktop/Github/anagram_finder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/oozgur/Desktop/Github/anagram_finder

# Include any dependencies generated for this target.
include CMakeFiles/anagram_finder.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/anagram_finder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/anagram_finder.dir/flags.make

CMakeFiles/anagram_finder.dir/dictionary.cpp.o: CMakeFiles/anagram_finder.dir/flags.make
CMakeFiles/anagram_finder.dir/dictionary.cpp.o: dictionary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/oozgur/Desktop/Github/anagram_finder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/anagram_finder.dir/dictionary.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/anagram_finder.dir/dictionary.cpp.o -c /Users/oozgur/Desktop/Github/anagram_finder/dictionary.cpp

CMakeFiles/anagram_finder.dir/dictionary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anagram_finder.dir/dictionary.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/oozgur/Desktop/Github/anagram_finder/dictionary.cpp > CMakeFiles/anagram_finder.dir/dictionary.cpp.i

CMakeFiles/anagram_finder.dir/dictionary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anagram_finder.dir/dictionary.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/oozgur/Desktop/Github/anagram_finder/dictionary.cpp -o CMakeFiles/anagram_finder.dir/dictionary.cpp.s

CMakeFiles/anagram_finder.dir/dictionary.cpp.o.requires:

.PHONY : CMakeFiles/anagram_finder.dir/dictionary.cpp.o.requires

CMakeFiles/anagram_finder.dir/dictionary.cpp.o.provides: CMakeFiles/anagram_finder.dir/dictionary.cpp.o.requires
	$(MAKE) -f CMakeFiles/anagram_finder.dir/build.make CMakeFiles/anagram_finder.dir/dictionary.cpp.o.provides.build
.PHONY : CMakeFiles/anagram_finder.dir/dictionary.cpp.o.provides

CMakeFiles/anagram_finder.dir/dictionary.cpp.o.provides.build: CMakeFiles/anagram_finder.dir/dictionary.cpp.o


CMakeFiles/anagram_finder.dir/test.cpp.o: CMakeFiles/anagram_finder.dir/flags.make
CMakeFiles/anagram_finder.dir/test.cpp.o: test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/oozgur/Desktop/Github/anagram_finder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/anagram_finder.dir/test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/anagram_finder.dir/test.cpp.o -c /Users/oozgur/Desktop/Github/anagram_finder/test.cpp

CMakeFiles/anagram_finder.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anagram_finder.dir/test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/oozgur/Desktop/Github/anagram_finder/test.cpp > CMakeFiles/anagram_finder.dir/test.cpp.i

CMakeFiles/anagram_finder.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anagram_finder.dir/test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/oozgur/Desktop/Github/anagram_finder/test.cpp -o CMakeFiles/anagram_finder.dir/test.cpp.s

CMakeFiles/anagram_finder.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/anagram_finder.dir/test.cpp.o.requires

CMakeFiles/anagram_finder.dir/test.cpp.o.provides: CMakeFiles/anagram_finder.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/anagram_finder.dir/build.make CMakeFiles/anagram_finder.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/anagram_finder.dir/test.cpp.o.provides

CMakeFiles/anagram_finder.dir/test.cpp.o.provides.build: CMakeFiles/anagram_finder.dir/test.cpp.o


# Object files for target anagram_finder
anagram_finder_OBJECTS = \
"CMakeFiles/anagram_finder.dir/dictionary.cpp.o" \
"CMakeFiles/anagram_finder.dir/test.cpp.o"

# External object files for target anagram_finder
anagram_finder_EXTERNAL_OBJECTS =

anagram_finder: CMakeFiles/anagram_finder.dir/dictionary.cpp.o
anagram_finder: CMakeFiles/anagram_finder.dir/test.cpp.o
anagram_finder: CMakeFiles/anagram_finder.dir/build.make
anagram_finder: CMakeFiles/anagram_finder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/oozgur/Desktop/Github/anagram_finder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable anagram_finder"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/anagram_finder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/anagram_finder.dir/build: anagram_finder

.PHONY : CMakeFiles/anagram_finder.dir/build

CMakeFiles/anagram_finder.dir/requires: CMakeFiles/anagram_finder.dir/dictionary.cpp.o.requires
CMakeFiles/anagram_finder.dir/requires: CMakeFiles/anagram_finder.dir/test.cpp.o.requires

.PHONY : CMakeFiles/anagram_finder.dir/requires

CMakeFiles/anagram_finder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/anagram_finder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/anagram_finder.dir/clean

CMakeFiles/anagram_finder.dir/depend:
	cd /Users/oozgur/Desktop/Github/anagram_finder && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/oozgur/Desktop/Github/anagram_finder /Users/oozgur/Desktop/Github/anagram_finder /Users/oozgur/Desktop/Github/anagram_finder /Users/oozgur/Desktop/Github/anagram_finder /Users/oozgur/Desktop/Github/anagram_finder/CMakeFiles/anagram_finder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/anagram_finder.dir/depend

