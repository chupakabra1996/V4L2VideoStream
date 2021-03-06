#-------------------------------------------------
#
# Project created by QtCreator 2017-07-10T17:56:09
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
OPE
TARGET = V4L2VideoStream
TEMPLATE = app

# Enable c++11
CONFIG  += c++11

QMAKE_CXXFLAGS += -Wall -Wextra -pedantic

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
    v4l2device.cpp \
    videostreamer.cpp

HEADERS += \
    v4l2device.h \
    videostreamer.h

FORMS += \
    videostreamer.ui

# OpenCV

OPENCV_PATH = "/home/robot/opencv-3.2.0"

LIBS_PATH = /usr/local/lib

LIBS += \
    -L$$LIBS_PATH \
    -lopencv_core \
    -lopencv_imgproc \
    -lopencv_imgcodecs

INCLUDEPATH += \
    $$OPENCV_PATH/modules/core/include/ \
    $$OPENCV_PATH/modules/imgproc/include/ \
    $$OPENCV_PATH/modules/highgui/include/ \
    $$OPENCV_PATH/modules/imgcodecs/include
