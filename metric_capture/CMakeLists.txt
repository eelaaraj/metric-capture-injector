aux_source_directory(. CAPTURE_SRC_LIST)
find_package(Threads)

find_package(libbsoncxx REQUIRED)
find_package(libmongocxx REQUIRED)
include_directories(${LIBMONGOCXX_INCLUDE_DIRS} ${LIBBSONCXX_INCLUDE_DIRS})
link_directories(${LIBMONGOCXX_LIBRARY_DIRS} ${LIBBSONCXX_LIBRARY_DIRS})

find_package(PkgConfig)
pkg_check_modules(LIBBSONC REQUIRED libbson-1.0)
pkg_check_modules(LIBMONGOC REQUIRED libmongoc-1.0)
include_directories(${LIBMONGOC_INCLUDE_DIRS} ${LIBBSONC_INCLUDE_DIRS})
link_directories(${LIBMONGOC_LIBRARY_DIRS} ${LIBBSONC_LIBRARY_DIRS})

add_library(MetricCapture OBJECT
    # List your source files here.
    ${CAPTURE_SRC_LIST}
)
#target_link_libraries(MetricCapture ${LIBMONGOCXX_LIBRARIES} ${LIBBSONCXX_LIBRARIES})

#target_link_libraries(MetricCapture ${CMAKE_THREAD_LIBS_INIT} )
# Use C++11 to compile our pass (i.e., supply -std=c++11).
#target_compile_features(InjectorPass PRIVATE cxx_range_for cxx_auto_type)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -gdwarf-2 -O0")


