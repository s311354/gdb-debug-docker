cmake_minimum_required(VERSION 3.10.0)
project(DEBUG_MODE VERSION 0.0.1 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 11)

# Non-optimized code with debug symbols
# This is equivalent to `g++ -g xxx.cpp -o xxx`
set(CMAKE_BUILD_TYPE Debug)

# Optimized code with debug symbols
# set (CMAKE_BUILD_TYPE RelWithDebInfo)

# Optimized code for release
# set(CMAKE_BUILD_TYPE Release)

add_library(header header.cpp)

add_executable(logicalError logicalError.cpp)
target_link_libraries(logicalError PRIVATE header)

add_executable(coreDumped coreDumped.cpp)
add_executable(memoryLeak memoryLeak.cpp)
