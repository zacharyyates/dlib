cmake_minimum_required(VERSION 2.8.12)
project(webassembly)
add_subdirectory(../dlib dlib_build)
add_executable(face_detection_ex face_detection_ex.cpp)
target_link_libraries(face_detection_ex dlib::dlib)

# To compile this program all you need to do is ask cmake.  You would type
# these commands from within the directory containing this CMakeLists.txt
# file:
#   mkdir build
#   cd build
#   cmake ..
#   cmake --build . --config Release
