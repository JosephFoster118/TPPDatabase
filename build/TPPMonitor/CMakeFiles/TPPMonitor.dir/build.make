# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/BBB/software/TwitchPlaysPokemonMonitor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/BBB/software/TwitchPlaysPokemonMonitor/build

# Include any dependencies generated for this target.
include TPPMonitor/CMakeFiles/TPPMonitor.dir/depend.make

# Include the progress variables for this target.
include TPPMonitor/CMakeFiles/TPPMonitor.dir/progress.make

# Include the compile flags for this target's objects.
include TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o: TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make
TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o: ../TPPMonitor/src/Monitor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Monitor.cpp

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Monitor.cpp > CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.i

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Monitor.cpp -o CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.s

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.requires:
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.provides: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.requires
	$(MAKE) -f TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.provides.build
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.provides

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.provides.build: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o: TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make
TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o: ../TPPMonitor/src/IRCMessage.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCMessage.cpp

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCMessage.cpp > CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.i

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCMessage.cpp -o CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.s

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.requires:
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.provides: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.requires
	$(MAKE) -f TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.provides.build
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.provides

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.provides.build: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o: TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make
TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o: ../TPPMonitor/src/Pokemon.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Pokemon.cpp

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Pokemon.cpp > CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.i

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/Pokemon.cpp -o CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.s

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.requires:
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.provides: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.requires
	$(MAKE) -f TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.provides.build
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.provides

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.provides.build: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o: TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make
TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o: ../TPPMonitor/src/TPPMonitor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/TPPMonitor.cpp

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/TPPMonitor.cpp > CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.i

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/TPPMonitor.cpp -o CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.s

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.requires:
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.provides: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.requires
	$(MAKE) -f TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.provides.build
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.provides

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.provides.build: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o: TPPMonitor/CMakeFiles/TPPMonitor.dir/flags.make
TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o: ../TPPMonitor/src/IRCClient.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCClient.cpp

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCClient.cpp > CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.i

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor/src/IRCClient.cpp -o CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.s

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.requires:
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.provides: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.requires
	$(MAKE) -f TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.provides.build
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.provides

TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.provides.build: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o

# Object files for target TPPMonitor
TPPMonitor_OBJECTS = \
"CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o" \
"CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o" \
"CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o" \
"CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o" \
"CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o"

# External object files for target TPPMonitor
TPPMonitor_EXTERNAL_OBJECTS =

../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/build.make
../bin/TPPMonitor: ../lib/libgsi.a
../bin/TPPMonitor: ../lib/libgsu.a
../bin/TPPMonitor: TPPMonitor/CMakeFiles/TPPMonitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/TPPMonitor"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TPPMonitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
TPPMonitor/CMakeFiles/TPPMonitor.dir/build: ../bin/TPPMonitor
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/build

TPPMonitor/CMakeFiles/TPPMonitor.dir/requires: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Monitor.cpp.o.requires
TPPMonitor/CMakeFiles/TPPMonitor.dir/requires: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCMessage.cpp.o.requires
TPPMonitor/CMakeFiles/TPPMonitor.dir/requires: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/Pokemon.cpp.o.requires
TPPMonitor/CMakeFiles/TPPMonitor.dir/requires: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/TPPMonitor.cpp.o.requires
TPPMonitor/CMakeFiles/TPPMonitor.dir/requires: TPPMonitor/CMakeFiles/TPPMonitor.dir/src/IRCClient.cpp.o.requires
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/requires

TPPMonitor/CMakeFiles/TPPMonitor.dir/clean:
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor && $(CMAKE_COMMAND) -P CMakeFiles/TPPMonitor.dir/cmake_clean.cmake
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/clean

TPPMonitor/CMakeFiles/TPPMonitor.dir/depend:
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/BBB/software/TwitchPlaysPokemonMonitor /home/BBB/software/TwitchPlaysPokemonMonitor/TPPMonitor /home/BBB/software/TwitchPlaysPokemonMonitor/build /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor /home/BBB/software/TwitchPlaysPokemonMonitor/build/TPPMonitor/CMakeFiles/TPPMonitor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : TPPMonitor/CMakeFiles/TPPMonitor.dir/depend
