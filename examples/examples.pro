include(../Common.pri)

QT       += core network xml

QT       -= gui

TARGET = testConsole
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

LIBS += -L$$APP_OUTPUT_PATH/../libs \
        -l$$replaceLibName(qwebdav)

HEADERS += \
    qexample.h

SOURCES += \
    main.cpp \
    qexample.cpp

DESTDIR = $$APP_OUTPUT_PATH
