SET(CMAKE_C_COMPILER "/usr/local/bin/clang")
SET(CMAKE_CXX_COMPILER "/usr/local/bin/clang++")

project(MetricCaptureInjector)

# Use C++11 to compile our pass (i.e., supply -std=c++11).
#target_compile_features(InjectorPass PRIVATE cxx_range_for cxx_auto_type)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -gdwarf-2 -O0")

cmake_minimum_required(VERSION 2.8)
aux_source_directory(. SRC_LIST)

find_package(Threads)
find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(/usr/local/include/llvm)
include_directories(/usr/local/include/clang)
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
link_directories(/usr/lib/gcc/x86_64-linux-gnu/4.9)
link_directories(/usr/lib/x86_64_linux_gnu)

add_subdirectory(injector)  # Use your pass name here.
add_subdirectory(metric_capture)
#add_subdirectory(instrumented)

#add_executable(${PROJECT_NAME} ${SRC_LIST})
# links pthreads to binaries
#target_link_libraries(${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT} )

