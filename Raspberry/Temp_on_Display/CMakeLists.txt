cmake_minimum_required(VERSION 3.16)
project(Temp_on_Display)
find_library(WIRINGPI_LIBRARIES NAMES wiringPi)
set(SOURCE main.c sensor.c sensor.h tm1637.h)
set(CMAKE_BUILD_TYPE Debug)
add_executable(Display ${SOURCE})
target_link_libraries(Display ${WIRINGPI_LIBRARIES})

