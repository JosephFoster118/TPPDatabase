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
include gsi/CMakeFiles/gsi.dir/depend.make

# Include the progress variables for this target.
include gsi/CMakeFiles/gsi.dir/progress.make

# Include the compile flags for this target's objects.
include gsi/CMakeFiles/gsi.dir/flags.make

gsi/CMakeFiles/gsi.dir/src/Time.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/Time.cpp.o: ../gsi/src/Time.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/Time.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/Time.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Time.cpp

gsi/CMakeFiles/gsi.dir/src/Time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/Time.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Time.cpp > CMakeFiles/gsi.dir/src/Time.cpp.i

gsi/CMakeFiles/gsi.dir/src/Time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/Time.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Time.cpp -o CMakeFiles/gsi.dir/src/Time.cpp.s

gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/Time.cpp.o

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o: ../gsi/src/Exception.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/Exception.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Exception.cpp

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/Exception.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Exception.cpp > CMakeFiles/gsi.dir/src/Exception.cpp.i

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/Exception.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Exception.cpp -o CMakeFiles/gsi.dir/src/Exception.cpp.s

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o: ../gsi/src/UdpSocket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/UdpSocket.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/UdpSocket.cpp

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/UdpSocket.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/UdpSocket.cpp > CMakeFiles/gsi.dir/src/UdpSocket.cpp.i

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/UdpSocket.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/UdpSocket.cpp -o CMakeFiles/gsi.dir/src/UdpSocket.cpp.s

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o: ../gsi/src/RobotLogger.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/RobotLogger.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/RobotLogger.cpp

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/RobotLogger.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/RobotLogger.cpp > CMakeFiles/gsi.dir/src/RobotLogger.cpp.i

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/RobotLogger.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/RobotLogger.cpp -o CMakeFiles/gsi.dir/src/RobotLogger.cpp.s

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o: ../gsi/src/TCPSocket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/TCPSocket.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/TCPSocket.cpp

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/TCPSocket.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/TCPSocket.cpp > CMakeFiles/gsi.dir/src/TCPSocket.cpp.i

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/TCPSocket.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/TCPSocket.cpp -o CMakeFiles/gsi.dir/src/TCPSocket.cpp.s

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o: ../gsi/src/Mutex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/Mutex.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Mutex.cpp

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/Mutex.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Mutex.cpp > CMakeFiles/gsi.dir/src/Mutex.cpp.i

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/Mutex.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Mutex.cpp -o CMakeFiles/gsi.dir/src/Mutex.cpp.s

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o: ../gsi/src/PeriodicThread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/PeriodicThread.cpp

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/PeriodicThread.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/PeriodicThread.cpp > CMakeFiles/gsi.dir/src/PeriodicThread.cpp.i

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/PeriodicThread.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/PeriodicThread.cpp -o CMakeFiles/gsi.dir/src/PeriodicThread.cpp.s

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o: ../gsi/src/Thread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/Thread.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Thread.cpp

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/Thread.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Thread.cpp > CMakeFiles/gsi.dir/src/Thread.cpp.i

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/Thread.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Thread.cpp -o CMakeFiles/gsi.dir/src/Thread.cpp.s

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o: gsi/CMakeFiles/gsi.dir/flags.make
gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o: ../gsi/src/Semaphore.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/BBB/software/TwitchPlaysPokemonMonitor/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gsi.dir/src/Semaphore.cpp.o -c /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Semaphore.cpp

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gsi.dir/src/Semaphore.cpp.i"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Semaphore.cpp > CMakeFiles/gsi.dir/src/Semaphore.cpp.i

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gsi.dir/src/Semaphore.cpp.s"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/BBB/software/TwitchPlaysPokemonMonitor/gsi/src/Semaphore.cpp -o CMakeFiles/gsi.dir/src/Semaphore.cpp.s

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.requires:
.PHONY : gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.requires

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.provides: gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.requires
	$(MAKE) -f gsi/CMakeFiles/gsi.dir/build.make gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.provides.build
.PHONY : gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.provides

gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.provides.build: gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o

# Object files for target gsi
gsi_OBJECTS = \
"CMakeFiles/gsi.dir/src/Time.cpp.o" \
"CMakeFiles/gsi.dir/src/Exception.cpp.o" \
"CMakeFiles/gsi.dir/src/UdpSocket.cpp.o" \
"CMakeFiles/gsi.dir/src/RobotLogger.cpp.o" \
"CMakeFiles/gsi.dir/src/TCPSocket.cpp.o" \
"CMakeFiles/gsi.dir/src/Mutex.cpp.o" \
"CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o" \
"CMakeFiles/gsi.dir/src/Thread.cpp.o" \
"CMakeFiles/gsi.dir/src/Semaphore.cpp.o"

# External object files for target gsi
gsi_EXTERNAL_OBJECTS =

../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/Time.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/build.make
../lib/libgsi.a: gsi/CMakeFiles/gsi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libgsi.a"
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && $(CMAKE_COMMAND) -P CMakeFiles/gsi.dir/cmake_clean_target.cmake
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gsi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gsi/CMakeFiles/gsi.dir/build: ../lib/libgsi.a
.PHONY : gsi/CMakeFiles/gsi.dir/build

gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/Time.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/Exception.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/UdpSocket.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/RobotLogger.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/TCPSocket.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/Mutex.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/PeriodicThread.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/Thread.cpp.o.requires
gsi/CMakeFiles/gsi.dir/requires: gsi/CMakeFiles/gsi.dir/src/Semaphore.cpp.o.requires
.PHONY : gsi/CMakeFiles/gsi.dir/requires

gsi/CMakeFiles/gsi.dir/clean:
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi && $(CMAKE_COMMAND) -P CMakeFiles/gsi.dir/cmake_clean.cmake
.PHONY : gsi/CMakeFiles/gsi.dir/clean

gsi/CMakeFiles/gsi.dir/depend:
	cd /home/BBB/software/TwitchPlaysPokemonMonitor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/BBB/software/TwitchPlaysPokemonMonitor /home/BBB/software/TwitchPlaysPokemonMonitor/gsi /home/BBB/software/TwitchPlaysPokemonMonitor/build /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi /home/BBB/software/TwitchPlaysPokemonMonitor/build/gsi/CMakeFiles/gsi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gsi/CMakeFiles/gsi.dir/depend

