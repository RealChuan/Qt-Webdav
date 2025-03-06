cmake_minimum_required(VERSION 3.25.1)

include(cmake/qt.cmake)

project(
  Qt-Webdav
  VERSION 0.1
  DESCRIPTION "Qt Webdav Client"
  HOMEPAGE_URL "https://github.com/RealChuan/Qt-Webdav"
  LANGUAGES CXX)

include(cmake/common.cmake)

find_package(Qt6 6.5 REQUIRED COMPONENTS Network Xml)

qt_standard_project_setup(REQUIRES 6.5)
# qt_standard_project_setup will set CMAKE_RUNTIME_OUTPUT_DIRECTORY, we need to
# set it back, and use EXECUTABLE_OUTPUT_PATH
unset(CMAKE_RUNTIME_OUTPUT_DIRECTORY)

add_subdirectory(qwebdav)
add_subdirectory(examples)

include(cmake/build_info.cmake)
