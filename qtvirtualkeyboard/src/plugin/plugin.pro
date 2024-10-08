TARGET = qtvirtualkeyboardplugin
QT += qml virtualkeyboard-private

SOURCES += \
    plugin.cpp \
    extensionloader.cpp

HEADERS += \
    plugin.h \
    extensionloader.h

OTHER_FILES += \
    qtvirtualkeyboard.json

DEFINES += \
    QT_NO_CAST_TO_ASCII \
    QT_ASCII_CAST_WARNINGS \
    QT_NO_CAST_FROM_ASCII \
    QT_NO_CAST_FROM_BYTEARRAY

no-builtin-style {
    DEFINES += QT_VIRTUALKEYBOARD_NO_BUILTIN_STYLES
}
disable-layouts {
    DEFINES += QT_VIRTUALKEYBOARD_DISABLE_LAYOUTS
}

win32 {
    QMAKE_TARGET_PRODUCT = "Qt Virtual Keyboard (Qt $$QT_VERSION)"
    QMAKE_TARGET_DESCRIPTION = "Virtual Keyboard for Qt."
    LIBS += -limm32
}

PLUGIN_TYPE = platforminputcontexts
PLUGIN_EXTENDS = -
PLUGIN_CLASS_NAME = QVirtualKeyboardPlugin
load(qt_plugin)
