set(PROJECT_SOURCES
      main.cpp
      qexample.cpp qexample.h)

qt_add_executable(app MANUAL_FINALIZATION ${PROJECT_SOURCES})
target_link_libraries(app PRIVATE Qt6::Network qwebdav)
qt_finalize_executable(app)
