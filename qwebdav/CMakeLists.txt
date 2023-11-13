set(PROJECT_SOURCES
      qnaturalsort.cpp qnaturalsort.h
      qwebdav_global.h
      qwebdav.cpp qwebdav.h
      qwebdavdirparser.cpp qwebdavdirparser.h
      qwebdavitem.cpp qwebdavitem.h)

if (CMAKE_HOST_WIN32)
  add_library(qwebdav SHARED ${PROJECT_SOURCES})
else ()
  add_library(qwebdav ${PROJECT_SOURCES})
endif ()
target_link_libraries(qwebdav PRIVATE Qt6::Network Qt6::Xml)

if (CMAKE_HOST_WIN32)
  target_compile_definitions(qwebdav PRIVATE "QWEBDAV_LIBRARY")
endif()
