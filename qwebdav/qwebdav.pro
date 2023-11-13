include(../libs.pri)

QT       += network xml
QT       -= gui

DEFINES += QWEBDAV_LIBRARY
TARGET = $$replaceLibName(qwebdav)

HEADERS += \
    qnaturalsort.h \
    qwebdav.h \
    qwebdav_global.h \
    qwebdavdirparser.h \
    qwebdavitem.h

SOURCES += \
    qnaturalsort.cpp \
    qwebdav.cpp \
    qwebdavdirparser.cpp \
    qwebdavitem.cpp
