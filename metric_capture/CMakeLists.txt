aux_source_directory(. CAPTURE_SRC_LIST)
find_package(Threads)
add_library(MetricCapture OBJECT
    # List your source files here.
    ${CAPTURE_SRC_LIST}
)
#target_link_libraries(MetricCapture ${CMAKE_THREAD_LIBS_INIT} )
# Use C++11 to compile our pass (i.e., supply -std=c++11).
#target_compile_features(InjectorPass PRIVATE cxx_range_for cxx_auto_type)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -gdwarf-2 -O0")


