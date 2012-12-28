#-------------------------------------------------
#
# Project created by QtCreator 2012-12-24T12:47:27
#
#-------------------------------------------------

QT       -= core gui

TARGET = he
TEMPLATE = lib

DEFINES += HE_LIBRARY

QMAKE_CFLAGS += -std=c99

LIBS += -L$$OUT_PWD/PSXCore/Core/ \
        -L$$OUT_PWD/psflib/

LIBS += -lpsflib -lPSXCore -lz

DEPENDPATH += $$PWD/PSXCore/Core \
              $$PWD/psflib

PRE_TARGETDEPS += $$OUT_PWD/PSXCore/Core/libPSXCore.a \
                  $$OUT_PWD/psflib/libpsflib.a

INCLUDEPATH += PSXCore/Core \
               psflib

SOURCES += \
    heplug.c

HEADERS +=

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
