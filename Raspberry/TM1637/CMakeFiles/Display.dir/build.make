# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Desktop/maturita/Raspberry/TM1637

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/maturita/Raspberry/TM1637

# Include any dependencies generated for this target.
include CMakeFiles/Display.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Display.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Display.dir/flags.make

CMakeFiles/Display.dir/clock.c.o: CMakeFiles/Display.dir/flags.make
CMakeFiles/Display.dir/clock.c.o: clock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/maturita/Raspberry/TM1637/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Display.dir/clock.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Display.dir/clock.c.o   -c /home/pi/Desktop/maturita/Raspberry/TM1637/clock.c

CMakeFiles/Display.dir/clock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Display.dir/clock.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/maturita/Raspberry/TM1637/clock.c > CMakeFiles/Display.dir/clock.c.i

CMakeFiles/Display.dir/clock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Display.dir/clock.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/maturita/Raspberry/TM1637/clock.c -o CMakeFiles/Display.dir/clock.c.s

# Object files for target Display
Display_OBJECTS = \
"CMakeFiles/Display.dir/clock.c.o"

# External object files for target Display
Display_EXTERNAL_OBJECTS =

Display: CMakeFiles/Display.dir/clock.c.o
Display: CMakeFiles/Display.dir/build.make
Display: /usr/lib/libwiringPi.so
Display: CMakeFiles/Display.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/maturita/Raspberry/TM1637/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Display"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Display.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Display.dir/build: Display

.PHONY : CMakeFiles/Display.dir/build

CMakeFiles/Display.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Display.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Display.dir/clean

CMakeFiles/Display.dir/depend:
	cd /home/pi/Desktop/maturita/Raspberry/TM1637 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/maturita/Raspberry/TM1637 /home/pi/Desktop/maturita/Raspberry/TM1637 /home/pi/Desktop/maturita/Raspberry/TM1637 /home/pi/Desktop/maturita/Raspberry/TM1637 /home/pi/Desktop/maturita/Raspberry/TM1637/CMakeFiles/Display.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Display.dir/depend

