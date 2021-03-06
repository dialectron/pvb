TEMPLATE = lib
#CONFIG  += warn_on release Hilscher qt
CONFIG  += warn_on release staticlib
#CONFIG  += warn_on release
CONFIG  -= qt
CFLAGS   = -pipe -Wall -W -O0 -march=i586 -mcpu=i686 -fmessage-length=0 -DNO_DEBUG -fPIC
HEADERS  = rlspawn.h                 \
           rlwthread.h               \
           rlthread.h                \
           rlsocket.h                \
           rltime.h                  \
           rlmailbox.h               \
           rlfifo.h                  \
           rlsharedmemory.h          \
           rlspreadsheet.h           \
           rlinifile.h               \
           rlinterpreter.h           \
           rlpcontrol.h              \
           rlcutil.h                 \
           rldefine.h                \
           rlevent.h                 \
           rleventlogserver.h        \
           rldataprovider.h          \
           rlserial.h                \
           rlmodbus.h                \
           rlmodbusclient.h          \
           rl3964r.h                 \
           rlsiemenstcp.h            \
           rlsiemenstcpclient.h      \
           rlcontroller.h            \
           rlppiclient.h             \
           rludpsocket.h             \
           rleibnetip.h              \
           rlsvganimator.h           \
           rlwebcam.h
SOURCES  = rlspawn.cpp                 \
           rlwthread.cpp               \
           rlthread.cpp                \
           rlsocket.cpp                \
           rltime.cpp                  \
           rlmailbox.cpp               \
           rlfifo.cpp                  \
           rlsharedmemory.cpp          \
           rlspreadsheet.cpp           \
           rlinifile.cpp               \
           rlinterpreter.cpp           \
           rlpcontrol.cpp              \
           rlcutil.cpp                 \
           rlevent.cpp                 \
           rleventlogserver.cpp        \
           rldataprovider.cpp          \
           rlserial.cpp                \
           rlmodbus.cpp                \
           rlmodbusclient.cpp          \
           rl3964r.cpp                 \
           rlsiemenstcp.cpp            \
           rlsiemenstcpclient.cpp      \
           rlcontroller.cpp            \
           rlppiclient.cpp             \
           rludpsocket.cpp             \
           rleibnetip.cpp              \
           rlsvganimator.cpp           \
           rlwebcam.h
Hilscher {
  HEADERS += rlcannode.h           \
             rlcanopendaemon.h     \    
             rlcanopentypes.h      \
             rlcanopenstructs.h    \
             objdir.h              \
             rlcanopenclient.h     \
             rlcanopen.h
  SOURCES += rlcanopendaemon.cpp   \
             rlcanopentypes.cpp    \
             objdir.cpp            \
             rlcanopenclient.cpp   \
             rlcannode.cpp         \
             rlcanopen.cpp
  INCLUDEPATH = ../usr-inc
}

unix:OBJECTS += ../foreign/abel/lib/libabplc5.a
unix:OBJECTS += ../foreign/cell/lib/libcell.a
unix:OBJECTS += ../foreign/libnodave/openSocket.o
unix:OBJECTS += ../foreign/libnodave/setport.o
unix:OBJECTS += ../foreign/libnodave/nodave.o

TARGET   = rllib

unix:header.path = /usr/local/include/rllib 
unix:header.files = *.h ../foreign/abel/lib/*.h ../foreign/cell/lib/*.h ../foreign/libnodave/*.h 
unix:header.extra = mkdir -p /usr/local/include/rllib
unix:target.path = /usr/lib
unix:target.files = librllib.*
unix:INSTALLS = target header
