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
CMAKE_SOURCE_DIR = /home/pi/Desktop/maturita/Raspberry/DS18B20

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/maturita/Raspberry/DS18B20

# Include any dependencies generated for this target.
include CMakeFiles/DS18B20Reader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DS18B20Reader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DS18B20Reader.dir/flags.make

CMakeFiles/DS18B20Reader.dir/main.c.o: CMakeFiles/DS18B20Reader.dir/flags.make
CMakeFiles/DS18B20Reader.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/maturita/Raspberry/DS18B20/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/DS18B20Reader.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/DS18B20Reader.dir/main.c.o   -c /home/pi/Desktop/maturita/Raspberry/DS18B20/main.c

CMakeFiles/DS18B20Reader.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DS18B20Reader.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/maturita/Raspberry/DS18B20/main.c > CMakeFiles/DS18B20Reader.dir/main.c.i

CMakeFiles/DS18B20Reader.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DS18B20Reader.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/maturita/Raspberry/DS18B20/main.c -o CMakeFiles/DS18B20Reader.dir/main.c.s

CMakeFiles/DS18B20Reader.dir/sensor.c.o: CMakeFiles/DS18B20Reader.dir/flags.make
CMakeFiles/DS18B20Reader.dir/sensor.c.o: sensor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/maturita/Raspberry/DS18B20/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/DS18B20Reader.dir/sensor.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/DS18B20Reader.dir/sensor.c.o   -c /home/pi/Desktop/maturita/Raspberry/DS18B20/sensor.c

CMakeFiles/DS18B20Reader.dir/sensor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DS18B20Reader.dir/sensor.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/maturita/Raspberry/DS18B20/sensor.c > CMakeFiles/DS18B20Reader.dir/sensor.c.i

CMakeFiles/DS18B20Reader.dir/sensor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DS18B20Reader.dir/sensor.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/maturita/Raspberry/DS18B20/sensor.c -o CMakeFiles/DS18B20Reader.dir/sensor.c.s

# Object files for target DS18B20Reader
DS18B20Reader_OBJECTS = \
"CMakeFiles/DS18B20Reader.dir/main.c.o" \
"CMakeFiles/DS18B20Reader.dir/sensor.c.o"

# External object files for target DS18B20Reader
DS18B20Reader_EXTERNAL_OBJECTS =

DS18B20Reader: CMakeFiles/DS18B20Reader.dir/main.c.o
DS18B20Reader: CMakeFiles/DS18B20Reader.dir/sensor.c.o
DS18B20Reader: CMakeFiles/DS18B20Reader.dir/build.make
DS18B20Reader: CMakeFiles/DS18B20Reader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/maturita/Raspberry/DS18B20/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable DS18B20Reader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DS18B20Reader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DS18B20Reader.dir/build: DS18B20Reader

.PHONY : CMakeFiles/DS18B20Reader.dir/build

CMakeFiles/DS18B20Reader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DS18B20Reader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DS18B20Reader.dir/clean

CMakeFiles/DS18B20Reader.dir/depend:
	cd /home/pi/Desktop/maturita/Raspberry/DS18B20 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/maturita/Raspberry/DS18B20 /home/pi/Desktop/maturita/Raspberry/DS18B20 /home/pi/Desktop/maturita/Raspberry/DS18B20 /home/pi/Desktop/maturita/Raspberry/DS18B20 /home/pi/Desktop/maturita/Raspberry/DS18B20/CMakeFiles/DS18B20Reader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DS18B20Reader.dir/depend
