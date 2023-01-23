TEMPLATE = lib
CONFIG += dynamiclib plugin
CONFIG += qt
CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 5) {
	CONFIG += qt6
}
lessThan(QT_MAJOR_VERSION, 6) {
	CONFIG += qt5
}


#LIBS += -lnl-3 -lnl-cli-3 -lnl-genl-3 -lnl-idiag-3 -lnl-nf-3 -lnl-route-3


SOURCES += \
        Audio.cpp \
        Generator.cpp \
        SineCurve.cpp \

HEADERS += \
		Audio.h \
		AudioAbstractIO.h \
		SineCurve.h \
		Generator.h \
		pi2.h

qt5 {
SOURCES += \
	AudioInputQt5.cpp \
	AudioOutputQt5.cpp
HEADERS += \
	AudioInputQt5.h \
	AudioOutputQt5.h
}

qt6 {
SOURCES += \
	AudioInputQt6.cpp \
	AudioOutputQt6.cpp
HEADERS += \
	AudioInputQt6.h \
	AudioOutputQt6.h
}


include(../root.pri)


TARGET = $${PRJ_LIB}/QtDTMF
